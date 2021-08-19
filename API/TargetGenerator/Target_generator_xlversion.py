from sympy import symbols, diff, asin, atan2
import math
import numpy as np


class TargetGene(object):
    def __init__(self):
        self.MODE_FLAG = 1
        self.__Author = 'Bing-cheng'
        self.time_for_one_period = 0.01

        self.L1 = 70.0
        self.L2 = 50.0
        self.L3 = 24.0  # three parts of one leg
        self.present_position = {'rf': np.array([self.L1, self.L2, -self.L3]),
                                 'rh': np.array([self.L1, self.L2, -self.L3]),
                                 'lf': np.array([self.L1, self.L2, -self.L3]),
                                 'lh': np.array([self.L1, self.L2, -self.L3])}

        print(" __   ___  __   __  ")
        print("/ _  |__  |__) /  \ ")
        print("\__> |___ |  \ \__/ ")
        print("                    ")

    def detach(self, flag, time_period, time_for_one_period, width, height, alpha):  # make sure time_for_one_period is same
        t = symbols('t', real=True)
        if time_for_one_period == 0:
            time_for_one_period = self.time_for_one_period
        px = self.present_position[flag][0] - (- height / time_period ** 2 * t ** 2 + 2 * height / time_period * t) * math.sin(alpha)
        py = self.present_position[flag][1] + width / time_period * t
        pz = self.present_position[flag][2] + (- height / time_period ** 2 * t ** 2 + 2 * height / time_period * t) * math.cos(alpha)
        time_serial = np.linspace(0, time_period, int(time_period / time_for_one_period + 1))
        p_array = []
        v_array = []
        para_array = []
        # Calculate detach array
        for i in time_serial:
            p_alpha = asin(-self.L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
            p_gamma = asin(
                (self.L1 ** 2 + self.L2 ** 2 + self.L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * self.L1 * self.L2))           
            p_beta = asin((px ** 2 + py ** 2 + pz ** 2 + self.L1 ** 2 - self.L2 ** 2 - self.L3 ** 2) / (
                    2 * self.L1 * (px ** 2 + py ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5)) - atan2(
                (px ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5, py)
            p_array.append([float(p_alpha.subs(t, i)), float(p_beta.subs(t, i)), float(p_gamma.subs(t, i))])    
        p_array = np.array(p_array)
        self.present_position[flag][0] = self.present_position[flag][0] - height * math.sin(alpha)
        self.present_position[flag][1] = self.present_position[flag][1] + width
        self.present_position[flag][2] = self.present_position[flag][2] + height * math.cos(alpha)
        return p_array, v_array, para_array

    def detachxz(self, flag, time_period, time_for_one_period, width, height):  # make sure time_for_one_period is same
        t = symbols('t', real=True)
        if time_for_one_period == 0:
            time_for_one_period = self.time_for_one_period
        px = self.present_position[flag][0] + width / time_period * t
        py = self.present_position[flag][1] 
        pz = self.present_position[flag][2] - height / time_period ** 2 * t ** 2 + 2 * height / time_period * t
        time_serial = np.linspace(0, time_period, int(time_period / time_for_one_period + 1))
        p_array = []
        v_array = []
        para_array = []
        # Calculate detach array
        for i in time_serial:
            p_alpha = asin(-self.L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
            v_alpha = diff(p_alpha, t)
            p_gamma = asin(
                (self.L1 ** 2 + self.L2 ** 2 + self.L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * self.L1 * self.L2))
            v_gamma = diff(p_gamma, t)
            p_beta = asin((px ** 2 + py ** 2 + pz ** 2 + self.L1 ** 2 - self.L2 ** 2 - self.L3 ** 2) / (
                    2 * self.L1 * (px ** 2 + py ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5)) - atan2(
                (px ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5, py)
            v_beta = diff(p_beta, t)
            p_array.append([float(p_alpha.subs(t, i)), float(p_beta.subs(t, i)), float(p_gamma.subs(t, i))])
            v_array.append([float(v_alpha.subs(t, i)), float(v_beta.subs(t, i)), float(v_gamma.subs(t, i))])
            para_array.append([1, 1, 1])
        p_array = np.array(p_array)
        v_array = np.array(v_array)
        para_array = np.array(para_array)
        self.present_position[flag][0] = self.present_position[flag][0] + width
        self.present_position[flag][1] = self.present_position[flag][1] 
        self.present_position[flag][2] = self.present_position[flag][2] + height
        return p_array, v_array, para_array

    def moving(self, flag, time_period, time_for_one_period, target, para=1):  # make sure time_for_one_period is same
        t = symbols('t', real=True)
        if time_for_one_period == 0:
            time_for_one_period = self.time_for_one_period

        time_serial = np.linspace(0, time_period, int(time_period / time_for_one_period + 1))
        px = self.present_position[flag][0] + (target[0] - self.present_position[flag][0]) / time_period * t
        py = self.present_position[flag][1] + (target[1] - self.present_position[flag][1]) / time_period * t
        pz = self.present_position[flag][2] + (target[2] - self.present_position[flag][2]) / time_period * t
        p_array = []
        v_array = []
        para_array = []
        # Calculate moving array
        for i in time_serial:
            p_alpha = asin(-self.L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
            v_alpha = diff(p_alpha, t)
            p_gamma = asin(
                (self.L1 ** 2 + self.L2 ** 2 + self.L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * self.L1 * self.L2))
            v_gamma = diff(p_gamma, t)
            p_beta = asin((px ** 2 + py ** 2 + pz ** 2 + self.L1 ** 2 - self.L2 ** 2 - self.L3 ** 2) / (
                    2 * self.L1 * (px ** 2 + py ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5)) - atan2(
                (px ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5, py)
            v_beta = diff(p_beta, t)
            p_array.append([float(p_alpha.subs(t, i)), float(p_beta.subs(t, i)), float(p_gamma.subs(t, i))])
            v_array.append([float(v_alpha.subs(t, i)), float(v_beta.subs(t, i)), float(v_gamma.subs(t, i))])
            para_array.append([para, para, para])
        p_array = np.array(p_array)
        v_array = np.array(v_array)
        para_array = np.array(para_array)
        self.present_position[flag][0] = target[0]
        self.present_position[flag][1] = target[1]
        self.present_position[flag][2] = target[2]
        return p_array, v_array, para_array

    def steady(self, flag, data_num):
        px = self.present_position[flag][0]
        py = self.present_position[flag][1]
        pz = self.present_position[flag][2]
        p_alpha = asin(-self.L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
        p_gamma = asin(
            (self.L1 ** 2 + self.L2 ** 2 + self.L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * self.L1 * self.L2))
        p_beta = asin((px ** 2 + py ** 2 + pz ** 2 + self.L1 ** 2 - self.L2 ** 2 - self.L3 ** 2) / (
                2 * self.L1 * (px ** 2 + py ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5)) - atan2(
            (px ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5, py)
        p_array = []
        v_array = []
        para_array = []
        for i in range(data_num):
            p_array.append([p_alpha, p_beta, p_gamma])
            v_array.append([0, 0, 0])
            para_array.append([1, 1, 1])
        p_array = np.array(p_array)
        v_array = np.array(v_array)
        return p_array, v_array, para_array

    def dna(self, flag, time_period, time_for_one_period, width, height):
        t = symbols('t', real=True)
        if time_for_one_period == 0:
            time_for_one_period = self.time_for_one_period
        px = self.present_position[flag][0]
        py = self.present_position[flag][1] + width / time_period * 2 * t
        pz = self.present_position[flag][2] - height / time_period ** 2 * (t * 2) ** 2 + 2 * height / time_period * (t * 2)
        time_serial = np.linspace(0, time_period, int(time_period / time_for_one_period + 1))
        p_array = []
        v_array = []

        # Calculate detach array
        for i in time_serial:
            p_alpha = asin(-self.L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
            v_alpha = diff(p_alpha, t)
            p_beta = asin(
                (self.L1 ** 2 + self.L2 ** 2 + self.L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * self.L1 * self.L2))
            v_beta = diff(p_beta, t)
            p_gamma = asin((px ** 2 + py ** 2 + pz ** 2 + self.L1 ** 2 - self.L2 ** 2 - self.L3 ** 2) / (
                    2 * self.L1 * (px ** 2 + py ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5)) - atan2(
                (px ** 2 + pz ** 2 - self.L3 ** 2) ** 0.5, py)
            v_gamma = diff(p_gamma, t)
            p_array.append([float(p_alpha.subs(t, i)), float(p_beta.subs(t, i)), float(p_gamma.subs(t, i))])
            v_array.append([float(v_alpha.subs(t, i)), float(v_beta.subs(t, i)), float(v_gamma.subs(t, i))])

        p_array = np.array(p_array)
        v_array = np.array(v_array)
        self.present_position[flag][0] = self.present_position[flag][0]
        self.present_position[flag][1] = self.present_position[flag][1] + width
        self.present_position[flag][2] = self.present_position[flag][2]
        return p_array, v_array





