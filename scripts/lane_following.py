import rospy 
from pacmod_msgs.msg import PositionWithSpeed, PacmodCmd
from sensor_msgs.msg import Image
from std_msgs.msg import String, Bool, Float32, Float64
from cv_bridge import CvBridge
from cv_bridge import CvBridgeError

# Python Headers
import math
import scipy.signal as signal

# ROS Headers
import alvinxy.alvinxy as axy # Import AlvinXY transformation module

import argparse
import os.path as ops
import os
import time

import cv2
import matplotlib.pyplot as plt
import numpy as np
import tensorflow.compat.v1 as tf

from lanenet_model import lanenet
from lanenet_model import lanenet_postprocess
from local_utils.config_utils import parse_config_utils
from local_utils.log_util import init_logger

CFG = parse_config_utils.lanenet_cfg
LOG = init_logger.get_logger(log_file_name_prefix='lanenet_test')

tf.disable_v2_behavior()
tf.disable_eager_execution()

class PID(object):

    def __init__(self, kp, ki, kd, wg=None):

        self.iterm  = 0
        self.last_t = None
        self.last_e = 0
        self.kp     = kp
        self.ki     = ki
        self.kd     = kd
        self.wg     = wg
        self.derror = 0

    def reset(self):
        self.iterm  = 0
        self.last_e = 0
        self.last_t = None

    def get_control(self, t, e, fwd=0):

        if self.last_t is None:
            self.last_t = t
            de = 0
        else:
            de = (e - self.last_e) / (t - self.last_t)

        if abs(e - self.last_e) > 0.5:
            de = 0

        self.iterm += e * (t - self.last_t)

        # take care of integral winding-up
        if self.wg is not None:
            if self.iterm > self.wg:
                self.iterm = self.wg
            elif self.iterm < -self.wg:
                self.iterm = -self.wg

        self.last_e = e
        self.last_t = t
        self.derror = de

        return fwd + self.kp * e + self.ki * self.iterm + self.kd * de

class OnlineFilter(object):

    def __init__(self, cutoff, fs, order):
        
        nyq = 0.5 * fs
        normal_cutoff = cutoff / nyq

        # Get the filter coefficients 
        self.b, self.a = signal.butter(order, normal_cutoff, btype='low', analog=False)

        # Initialize
        self.z = signal.lfilter_zi(self.b, self.a)
    
    def get_data(self, data):
        filted, self.z = signal.lfilter(self.b, self.a, [data], zi=self.z)
        return filted

import numpy as np

class Coodinate_transfer:
    def __init__(self) -> None:
        self.theta = -9.25 * np.pi / 180                # The depression angle of camera
        self.h = 1.59 - 0.08                  # The height of camera
        self.fx = 1046.17936/1920*1280
        self.fy = 1051.07316/1080*720
        self.cx = 1011.65344/1920*1280
        self.cy = 737.852696/1080*720
        
    def transfer(self, u, v):
        tmp1 = self.cy * np.sin(self.theta) - v * np.sin(self.theta) - self.fy * np.cos(self.theta)
        tmp2 = self.h * tmp1
        tmp3 = self.fy * np.sin(self.theta) - v * np.cos(self.theta) + self.cy * np.cos(self.theta)
        z = tmp2 / tmp3
        
        tmp4 = -self.h * (u - self.cx) * self.fy
        tmp5 = tmp3 * self.fx
        x = tmp4 / tmp5
        
        return(z, x)        
        
        
        
    def get_position(self, m, n):
        """
        Given the function of the detected lane v = mu + n,
        return the angle of the vehicle beta and the distance
        from vehicle to the lane.
        """
        tmp1 = n * np.cos(self.theta) + self.f * np.sin(self.theta)
        tmp2 = m * self.f
        beta = np.arctan(tmp1 / tmp2)
        
        tmp3 = self.h * np.cos(beta) - m * self.h * np.sin(self.theta) * np.sin(beta)
        tmp4 = m * np.cos(self.theta)
        d = tmp3 / tmp4
        
        return beta, d

class DetectorManager:
    def __init__(self):
        self.rate       = rospy.Rate(7)
        self.wheelbase  = 1.75 # meters
        self.offset     = 0.46 # meters

        # define subscriber
        self.image_topic =  '/mako_1/mako_1/image_raw'
        self.enable_sub = rospy.Subscriber("/pacmod/as_tx/enable", Bool, self.enable_callback)      
        self.image_sub = rospy.Subscriber(self.image_topic, Image, self.imageCb, queue_size = 1) 
        self.speed_sub  = rospy.Subscriber("/pacmod/as_tx/vehicle_speed", Float64, self.speed_callback)
        self.speed      = 0.0
        self.z = 0
        self.x = 0

        self.olat       = 40.0928563
        self.olon       = -88.2359994

        self.goal       = 0            

        self.desired_speed = 0.75  # m/s, reference speed
        self.max_accel     = 0.4 # % of acceleration
        self.pid_speed     = PID(1.2, 0.2, 0.6, wg=20)
        self.speed_filter  = OnlineFilter(1.2, 30, 4)

        self.bridge = CvBridge()
        self.Coodinate_transfer = Coodinate_transfer()
        self.filtered_fit_params = 0
        # define detector
        self.input_tensor = tf.placeholder(dtype=tf.float32, shape=[1, 720, 1280, 3], name='input_tensor')
        self.net = lanenet.LaneNet(phase='test', cfg=CFG)
        self.binary_seg_ret, self.instance_seg_ret = self.net.inference(input_tensor=self.input_tensor, name='LaneNet')
        self.postprocessor = lanenet_postprocess.LaneNetPostProcessor(cfg=CFG)

        # Set sess configuration
        sess_config = tf.ConfigProto()
        sess_config.gpu_options.per_process_gpu_memory_fraction = CFG.GPU.GPU_MEMORY_FRACTION
        sess_config.gpu_options.allow_growth = CFG.GPU.TF_ALLOW_GROWTH
        sess_config.gpu_options.allocator_type = 'BFC'
        self.sess = tf.Session(config=sess_config)

        # define moving average version of the learned variables for eval
        with tf.variable_scope(name_or_scope='moving_avg'):
            variable_averages = tf.train.ExponentialMovingAverage(
                CFG.SOLVER.MOVING_AVE_DECAY)
            variables_to_restore = variable_averages.variables_to_restore()

        # define saver
        self.saver = tf.train.Saver(variables_to_restore)
        self.saver.restore(sess=self.sess, save_path='weight/tusimple_lanenet.ckpt')

        self.i = 0      
        # -------------------- PACMod setup --------------------

        self.gem_enable    = False
        self.pacmod_enable = False

        # GEM vehicle enable, publish once
        self.enable_pub = rospy.Publisher('/pacmod/as_rx/enable', Bool, queue_size=1)
        self.enable_cmd = Bool()
        self.enable_cmd.data = False

        # GEM vehicle gear control, neutral, forward and reverse, publish once
        self.gear_pub = rospy.Publisher('/pacmod/as_rx/shift_cmd', PacmodCmd, queue_size=1)
        self.gear_cmd = PacmodCmd()
        self.gear_cmd.ui16_cmd = 2 # SHIFT_NEUTRAL

        # GEM vehilce brake control
        self.brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size=1)
        self.brake_cmd = PacmodCmd()
        self.brake_cmd.enable = False
        self.brake_cmd.clear  = True
        self.brake_cmd.ignore = True

        # GEM vechile forward motion control
        self.accel_pub = rospy.Publisher('/pacmod/as_rx/accel_cmd', PacmodCmd, queue_size=1)
        self.accel_cmd = PacmodCmd()
        self.accel_cmd.enable = False
        self.accel_cmd.clear  = True
        self.accel_cmd.ignore = True

        # GEM vechile steering wheel control
        self.steer_pub = rospy.Publisher('/pacmod/as_rx/steer_cmd', PositionWithSpeed, queue_size=1)
        self.steer_cmd = PositionWithSpeed()
        self.steer_cmd.angular_position = 0.0 # radians, -: clockwise, +: counter-clockwise
        self.steer_cmd.angular_velocity_limit = 2.0 # radians/second

        # Spin
        rospy.spin()
        
    def speed_callback(self, msg):
        self.speed = round(msg.data, 3) # forward velocity in m/s

    def enable_callback(self, msg):
        self.pacmod_enable = msg.data

    def front2steer(self, f_angle):
        if(f_angle > 35):
            f_angle = 35

        if (f_angle < -35):
            f_angle = -35

        if (f_angle > 0):
            steer_angle = round(-0.1084*f_angle**2 + 21.775*f_angle, 2)

        elif (f_angle < 0):
            f_angle = -f_angle
            steer_angle = -round(-0.1084*f_angle**2 + 21.775*f_angle, 2)
        else:
            steer_angle = 0.0

        return steer_angle

    def find_angle(self, v1, v2):
        dx1 = v1[0]
        dy1 = v1[1]
        dx2 = v2[0]
        dy2 = v2[1]
        angle1 = math.atan2(dy1, dx1)
        angle2 = math.atan2(dy2, dx2)
        included_angle = angle1-angle2
        if included_angle > math.pi:
            included_angle = included_angle - math.pi*2
        if included_angle < -math.pi:
            included_angle = included_angle + math.pi*2
        return included_angle

    def imageCb(self, data):
        try:
            if self.i == 0:
                t_start = time.time()
                self.cv_image = self.bridge.imgmsg_to_cv2(data, "rgb8")
                image_vis = cv2.resize(self.cv_image, (1280, 720), interpolation=cv2.INTER_LINEAR)
                image_vis[0:500, :] = [0,0,0]
                image = cv2.resize(self.cv_image, (1280, 720), interpolation=cv2.INTER_LINEAR)
                image[0:500, :] = [0,0,0]
                image = image / 127.5 - 1.0
                # LOG.info('Image load complete, cost time: {:.5f}s'.format(time.time() - t_start))

                with self.sess.as_default():                   
                    binary_seg_image, instance_seg_image = self.sess.run(
                        [self.binary_seg_ret, self.instance_seg_ret],
                        feed_dict={self.input_tensor: [image]}
                    )
                    postprocess_result = self.postprocessor.postprocess(
                        binary_seg_result=binary_seg_image[0],
                        instance_seg_result=instance_seg_image[0],
                        source_image=image_vis
                    )
                # print(postprocess_result['fit_params']) # k, b, y_near, y_far, fit_x_near, fix_x_far
                fit_params = np.array(postprocess_result['fit_params'])
                if fit_params != []:
                    index = np.where((fit_params[:,4] >= 350)  & (fit_params[:,4] <= 1100)  & (fit_params[:,2] >=600))
                    self.filtered_fit_params = fit_params[index[0]]
                else:
                    self.filtered_fit_params = []
                print(self.filtered_fit_params)
                t_cost = time.time() - t_start
                # print('Single imgae cost time: {:.5f}s'.format(t_cost))
                self.start_pp()
            self.i += 1          
            if self.i == 1:
                self.i = 0

        except CvBridgeError as e:
            print(e)
            
    def start_pp(self):
        
        while not rospy.is_shutdown():

            if (self.gem_enable == False):

                if(self.pacmod_enable == True):

                    # ---------- enable PACMod ----------

                    # enable forward gear
                    self.gear_cmd.ui16_cmd = 3

                    # enable brake
                    self.brake_cmd.enable  = True
                    self.brake_cmd.clear   = False
                    self.brake_cmd.ignore  = False
                    self.brake_cmd.f64_cmd = 0.0

                    # enable gas 
                    self.accel_cmd.enable  = True
                    self.accel_cmd.clear   = False
                    self.accel_cmd.ignore  = False
                    self.accel_cmd.f64_cmd = 0.0

                    self.gear_pub.publish(self.gear_cmd)
                    print("Foward Engaged!")
                    
                    self.brake_pub.publish(self.brake_cmd)
                    print("Brake Engaged!")

                    self.accel_pub.publish(self.accel_cmd)
                    print("Gas Engaged!")

                    self.gem_enable = True

            if self.filtered_fit_params.shape[0] == 2:
                v = int(np.mean(self.filtered_fit_params[:,3]))
                u = int(np.mean(self.filtered_fit_params[:,5]))
                # print(u,v)
                z,x = self.Coodinate_transfer.transfer(u,v)
                self.z = z
                self.x = x
                print(z,x)

            elif self.filtered_fit_params.shape[0] == 1:
                z_far,x_far = self.Coodinate_transfer.transfer(self.filtered_fit_params[0,5],self.filtered_fit_params[0,3])
                z_near,x_near = self.Coodinate_transfer.transfer(self.filtered_fit_params[0,4],self.filtered_fit_params[0,2])
                k = (z_far-z_near)/(x_far-x_near)
                theta = np.arctan(-1/k)
                if self.filtered_fit_params[0,4] <= 640: #left
                    x = x_far + 1.4 * np.cos(theta)
                    z = z_far + 1.4 * np.sin(theta)
                else:
                    x = x_far - 1.4 * np.cos(theta)
                    z = z_far - 1.4 * np.sin(theta)
                self.z = z
                self.x = x
                print(z,x)
            else:
                z = self.z
                x = self.x
            L = round(np.sqrt((z) ** 2 + (x) ** 2), 3)
            # find the curvature and the angle 
            alpha = -self.find_angle([0,1], [x,z]) # -?
            print(alpha)
            # ----------------- tuning this part as needed -----------------
            k       = 0.41 
            angle_i = math.atan((k * 2 * self.wheelbase * math.sin(alpha)) / L) 
            angle   = angle_i*2
            # ----------------- tuning this part as needed -----------------
            print(angle)
            f_delta = round(np.clip(angle, -0.61, 0.61), 3)

            f_delta_deg = np.degrees(f_delta)

            # steering_angle in degrees
            steering_angle = self.front2steer(f_delta_deg)

            if(self.gem_enable == True):
                print("Current index: " + str(self.goal))
                print("Forward velocity: " + str(self.speed))
                ct_error = round(np.sin(alpha) * L, 3)
                print("Crosstrack Error: " + str(ct_error))
                print("Front steering angle: " + str(np.degrees(f_delta)) + " degrees")
                print("Steering wheel angle: " + str(steering_angle) + " degrees" )
                print("\n")

            # if (self.goal >= 625 and self.goal <= 940):
            #     self.desired_speed = 1.5
            # else:
            #     self.desired_speed = 0.7

            current_time = rospy.get_time()
            filt_vel     = self.speed_filter.get_data(self.speed)
            output_accel = self.pid_speed.get_control(current_time, self.desired_speed - filt_vel)
            print(output_accel)
            if output_accel > self.max_accel:
                output_accel = self.max_accel

            if output_accel < 0.3:
                output_accel = 0.3

            self.accel_cmd.f64_cmd = output_accel
            self.steer_cmd.angular_position = np.radians(steering_angle)
            self.accel_pub.publish(self.accel_cmd)
            print('-----------------------------------')
            self.steer_pub.publish(self.steer_cmd)

            self.rate.sleep()

def pure_pursuit():

    rospy.init_node('detector_manager_node', anonymous=True)
    dm = DetectorManager()

    # try:
    #     print('starting pp')
    #     dm.start_pp()
    # except rospy.ROSInterruptException:
    #     pass


if __name__ == '__main__':
    pure_pursuit()