import numpy as np
from numpy import linalg as la
import rospy

from pid import PID

class WaypointPIDControl:
    def __init__(self) -> None:
        self.rate = rospy.Rate(20)
        self.pid = self.pid = PID(
            Kp=0.8,
            Ki=0.4,
            Kd=0,
            set_point=0.0,
            sample_time=0.01,
            out_limits=(-0.61, 0.61),
        )
        
    def find_angle(self, v1, v2):
        cosang = np.dot(v1, v2)
        sinang = la.norm(np.cross(v1, v2))
        # [-pi, pi]
        return np.arctan2(sinang, cosang)

        
    def follow_point(self, waypoint):
        """
        Given a waypoint in ego vehicle coordinate, return the angle between ego vehicle
        the vector from the vehicle to the waypoint. The angle is the one we need to 
        minimize with our pid control.
        """
        cur_feedback_val = self.find_angle(waypoint, (0, 1))
        angle = self.pid(cur_feedback_val)
        
        self.      speed = 
        self.      steering_angle = angle
        self.      publish
        
        self.rate.sleep()
        
        