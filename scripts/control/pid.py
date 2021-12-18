#!/usr/bin/python

import time
import numpy as np


class PID:
    def __init__(
        self,
        Kp=0.0,
        Ki=0.0,
        Kd=0.0,
        set_point=0.0,
        sample_time=0.01,
        out_limits=(None, None),
    ):

        self.Kp = Kp
        self.Ki = Ki
        self.Kd = Kd

        self.p_term = 0.0
        self.i_term = 0.0
        self.d_term = 0.0

        self.set_point = set_point

        self.sample_time = sample_time

        self.out_limits = out_limits

        self.last_err = 0.0

        self.last_time = time.time()

        self.output = 0.0

    def update(self, feedback_val):
        """Compute PID control value based on feedback_val.
        """

        # TODO: implement PID control
        error =  feedback_val
        delta_error = error - self.last_err
        cur_time = time.time()
        delta_time = cur_time - self.last_time

        if (delta_time < self.sample_time):
            return

        self.p_term = error
        self.i_term += error * delta_time
        self.d_term = delta_error / delta_time

        # self.i_term = max(min(self.i_term, self.out_limits[1]), self.out_limits[0])


        # if self.i_term < self.out_limits[0]:
        #     self.i_term = self.out_limits[0]
        # elif self.i_term > self.out_limits[1]:
        #     self.i_term = self.out_limits[1]


        self.last_err = error
        self.last_time = cur_time

        self.output = self.Kp * self.p_term + self.Ki * self.i_term + self.Kd * self.d_term
        if self.output < self.out_limits[0]:
            self.output = self.out_limits[0]
        elif self.output > self.out_limits[1]:
            self.output = self.out_limits[1]
        return self.output


    def __call__(self, feeback_val):
        return self.update(feeback_val)