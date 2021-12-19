# The mathematical formula is from the paper 汽车偏离车道线的图像分析与视觉计算方法 by MAO Yuxing, etc

import numpy as np

class Controller:
    def __init__(self) -> None:
        self.theta = 9.25 * np.pi / 180                # The depression angle of camera
        self.h = 1.65    0.08                  # The height of camera
        self.f =                       # focus length
        
        
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