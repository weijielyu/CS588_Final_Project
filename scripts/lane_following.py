import rospy 
from pacmod_msgs.msg import PacmodCmd
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
from cv_bridge import CvBridgeError


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

class DetectorManager:
    def __init__(self):
        self.bridge = CvBridge()
        self.image_topic =  '/mako_1/mako_1/image_raw'
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
        # define subscriber
        self.image_sub = rospy.Subscriber(self.image_topic, Image, self.imageCb, queue_size = 1)
        # define publisher
        self.brake_pub = rospy.Publisher('/pacmod/as_rx/brake_cmd', PacmodCmd, queue_size = 1)
        # self.forward_pub = rospy.Publisher('/pacmod/as_rx/accel_cmd', PacmodCmd, queue_size = 1)
        
        # Spin
        rospy.spin()
        

    def imageCb(self, data):
        try:
            if self.i == 0:
                self.cv_image = self.bridge.imgmsg_to_cv2(data, "rgb8")
                
                
                
                image_vis = cv2.resize(self.cv_image, (1280, 720), interpolation=cv2.INTER_LINEAR)
                image_vis[0:500, :] = [0,0,0]
                image = cv2.resize(self.cv_image, (1280, 720), interpolation=cv2.INTER_LINEAR)
                image[0:500, :] = [0,0,0]
                
                image = image / 127.5 - 1.0
                # LOG.info('Image load complete, cost time: {:.5f}s'.format(time.time() - t_start))

                with self.sess.as_default():
                    t_start = time.time()
                    binary_seg_image, instance_seg_image = self.sess.run(
                        [self.binary_seg_ret, self.instance_seg_ret],
                        feed_dict={self.input_tensor: [image]}
                    )
                    postprocess_result = self.postprocessor.postprocess(
                        binary_seg_result=binary_seg_image[0],
                        instance_seg_result=instance_seg_image[0],
                        source_image=image_vis
                    )
                    t_cost = time.time() - t_start
                    print('Single imgae inference cost time: {:.5f}s'.format(t_cost))
                    print(postprocess_result['fit_params'])
                
            self.i += 1
            print(self.i)
            if self.i == 8:
                self.i = 0

        except CvBridgeError as e:
            print(e)
            

if __name__=="__main__":
    # Initialize node
    forward_pub = rospy.Publisher('/pacmod/as_rx/accel_cmd', PacmodCmd, queue_size = 1)
    rospy.init_node("detector_manager_node")
    forward_pub.Publish(f64_cmd=0.3)

    # Define detector object
    dm = DetectorManager()