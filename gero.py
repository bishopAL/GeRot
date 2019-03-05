import math
import numpy as np


class GeRo(object):
    def __init__(self):
        self.MODE_FLAG = 1
        self.__Author__ = 'IBSS'
        self._DATANUM_FOR_PERSTEP = 150
        self._TRANS_FREQ = 100

        self.adjust_rf0 = 20.0  # 0 is the joint to make the leg higher, and 1, 2 are the joints to move rapidly in X-Y plane
        self.adjust_rf1 = -20.0
        self.adjust_rf2 = -60.0

        self.adjust_rh0 = 2.0
        self.adjust_rh1 = 55.0
        self.adjust_rh2 = -5.0

        self.adjust_lf0 = 42.0
        self.adjust_lf1 = 50.0
        self.adjust_lf2 = 76.0

        self.adjust_lh0 = 35.0
        self.adjust_lh1 = -25.0
        self.adjust_lh2 = -45.0

        self.adjust_yaw = 0.0
        self.adjust_pitch = 0.0

        self.l1 = 65.0
        self.l2 = 40.0
        self.l3 = 40.0  # three parts of one leg

        self.rf_origin_x = 65.0
        self.rf_origin_y = 40.0
        self.rf_origin_z = -40.0
        self.rh_origin_x = 65.0
        self.rh_origin_y = 40.0
        self.rh_origin_z = -40.0
        self.lf_origin_x = 65.0
        self.lf_origin_y = 40.0
        self.lf_origin_z = -40.0
        self.lh_origin_x = 65.0
        self.lh_origin_y = 40.0
        self.lh_origin_z = -40.0  # start point

    def ik(self, px, py, pz):  # Input the target position
        alpha = math.asin(-self.l3 / (px ** 2 + pz ** 2) ** 0.5) - math.atan2(pz, px)
        beta = math.asin((self.l1 ** 2 - self.l2 ** 2 - self.l3 ** 2 + px ** 2 + py ** 2 + pz ** 2) / (
                    2 * self.l1 * (-self.l3 ** 2 + px ** 2 + py ** 2 + pz ** 2) ** 0.5)) - math.atan2(
            (px ** 2 + pz ** 2 - self.l3 ** 2) ** 0.5, py)
        gamma = math.asin(
            (self.l1 ** 2 + self.l2 ** 2 + self.l3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * self.l1 * self.l2))
        return alpha, beta, gamma

    def generate_2d_gait_oneleg(self, flag, width, height, data_num=0):  # generate the target positon list
        if data_num == 0:
            data_num = self._DATANUM_FOR_PERSTEP
        if flag == 'rf':
            y_list_temp = list(np.linspace(0, width, data_num))
            if width == 0:
                z_list_temp = [0 for y in y_list_temp]
            else:
                z_list_temp = [-(4 * height) * y ** 2 / (width ** 2) + (4 * height) * y / width for y in y_list_temp]
            y_list = np.array([self.rf_origin_y + item for item in y_list_temp])
            z_list = np.array([self.rf_origin_z + item for item in z_list_temp])
            x_list = np.array([self.rf_origin_x for item in y_list_temp])
        if flag == 'rh':
            width = -width
            y_list_temp = list(np.linspace(0, width, self._DATANUM_FOR_PERSTEP))
            if width == 0:
                z_list_temp = [0 for y in y_list_temp]
            else:
                z_list_temp = [-(4 * height) * y ** 2 / (width ** 2) + (4 * height) * y / width for y in y_list_temp]
            y_list = np.array([self.rh_origin_y + item for item in y_list_temp])
            z_list = np.array([self.rh_origin_z + item for item in z_list_temp])
            x_list = np.array([self.rh_origin_x for item in y_list_temp])
        if flag == 'lf':
            y_list_temp = list(np.linspace(0, width, self._DATANUM_FOR_PERSTEP))
            if width == 0:
                z_list_temp = [0 for y in y_list_temp]
            else:
                z_list_temp = [-(4 * height) * y ** 2 / (width ** 2) + (4 * height) * y / width for y in y_list_temp]
            y_list = np.array([self.lf_origin_y + item for item in y_list_temp])
            z_list = np.array([self.lf_origin_z + item for item in z_list_temp])
            x_list = np.array([self.lf_origin_x for item in y_list_temp])
        if flag == 'lh':
            width = -width
            y_list_temp = list(np.linspace(0, width, self._DATANUM_FOR_PERSTEP))
            if width == 0:
                z_list_temp = [0 for y in y_list_temp]
            else:
                z_list_temp = [-(4 * height) * y ** 2 / (width ** 2) + (4 * height) * y / width for y in y_list_temp]
            y_list = np.array([self.lh_origin_y + item for item in y_list_temp])
            z_list = np.array([self.lh_origin_z + item for item in z_list_temp])
            x_list = np.array([self.lh_origin_x for item in y_list_temp])
        return x_list, y_list, z_list

    def generate_3d_gait_oneleg(self, flag, width=30.0, height=30.0, yaw=0.0):  # generate the target positon list
        t_list_temp = list(np.linspace(0, width, self._DATANUM_FOR_PERSTEP))
        if flag == 'rf':
            if width == 0:
                x_list_temp = [0 for item in t_list_temp]
                y_list_temp = [0 for item in t_list_temp]
                z_list_temp = [0 for item in t_list_temp]
            else:
                x_list_temp = [math.cos(yaw) * item for item in t_list_temp]
                y_list_temp = [math.sin(yaw) * item for item in t_list_temp]
                z_list_temp = [-(4 * height) * w ** 2 / (width ** 2) + (4 * height) * w / width for w in t_list_temp]
            y_list = np.array([self.rf_origin_y + item for item in y_list_temp])
            z_list = np.array([self.rf_origin_z + item for item in z_list_temp])
            x_list = np.array([self.rf_origin_x + item for item in x_list_temp])
        if flag == 'rh':
            if width == 0:
                x_list_temp = [0 for item in t_list_temp]
                y_list_temp = [0 for item in t_list_temp]
                z_list_temp = [0 for item in t_list_temp]
            else:
                x_list_temp = [math.cos(yaw) * item for item in t_list_temp]
                y_list_temp = [-math.sin(yaw) * item for item in t_list_temp]
                z_list_temp = [-(4 * height) * w ** 2 / (width ** 2) + (4 * height) * w / width for w in t_list_temp]
            y_list = np.array([self.rh_origin_y + item for item in y_list_temp])
            z_list = np.array([self.rh_origin_z + item for item in z_list_temp])
            x_list = np.array([self.rh_origin_x + item for item in x_list_temp])
        if flag == 'lf':
            if width == 0:
                x_list_temp = [0 for item in t_list_temp]
                y_list_temp = [0 for item in t_list_temp]
                z_list_temp = [0 for item in t_list_temp]
            else:
                x_list_temp = [-math.cos(yaw) * item for item in t_list_temp]
                y_list_temp = [math.sin(yaw) * item for item in t_list_temp]
                z_list_temp = [-(4 * height) * w ** 2 / (width ** 2) + (4 * height) * w / width for w in t_list_temp]
            y_list = np.array([self.lf_origin_y + item for item in y_list_temp])
            z_list = np.array([self.lf_origin_z + item for item in z_list_temp])
            x_list = np.array([self.lf_origin_x + item for item in x_list_temp])
        if flag == 'lh':
            if width == 0:
                x_list_temp = [0 for item in t_list_temp]
                y_list_temp = [0 for item in t_list_temp]
                z_list_temp = [0 for item in t_list_temp]
            else:
                x_list_temp = [-math.cos(yaw) * item for item in t_list_temp]
                y_list_temp = [-math.sin(yaw) * item for item in t_list_temp]
                z_list_temp = [-(4 * height) * w ** 2 / (width ** 2) + (4 * height) * w / width for w in t_list_temp]
            y_list = np.array([self.lh_origin_y + item for item in y_list_temp])
            z_list = np.array([self.lh_origin_z + item for item in z_list_temp])
            x_list = np.array([self.lh_origin_x + item for item in x_list_temp])
        return x_list, y_list, z_list

    def generate_servoangle_array(self, width=30.0, height=30.0):
        ###########################BIG NOTE#############################################
        # You can use this function to generate the whole gait planning 12 servos' angle#
        # rf_angle_list=[] and the others are set to restore the angle data for one leg##
        # Finally, they merge into one array and return it###############################
        ################################################################################
        rf_angle_list = []
        rh_angle_list = []
        lf_angle_list = []
        lh_angle_list = []
        # if flag == 'FAST_ON_GROUND':
        #########################First Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=width, height=height)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-width / 3, height=0)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-width / 3, height=0)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-width / 3, height=0)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += width
        self.rh_origin_y += (width / 3)
        self.lf_origin_y += (-width / 3)
        self.lh_origin_y += (width / 3)
        #########################First Step End######################################################################

        #########################Second Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-width / 3, height=0)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-width / 3, height=0)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=width, height=height)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-width / 3, height=0)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += (-width / 3)
        self.rh_origin_y += (width / 3)
        self.lf_origin_y += width
        self.lh_origin_y += (width / 3)
        #########################Second Step End######################################################################

        #########################Third Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-width / 3, height=0)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=width, height=height)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-width / 3, height=0)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-width / 3, height=0)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += (-width / 3)
        self.rh_origin_y += -width
        self.lf_origin_y += (-width / 3)
        self.lh_origin_y += (width / 3)
        #########################Third Step End######################################################################

        #########################Fourth Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-width / 3, height=0)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-width / 3, height=0)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-width / 3, height=0)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=width, height=height)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += (-width / 3)
        self.rh_origin_y += (width / 3)
        self.lf_origin_y += (-width / 3)
        self.lh_origin_y += -width
        #########################Fourth Step End######################################################################

        #########################Merge into one Array#################################################################
        outputarray = np.hstack(
            (np.array(rf_angle_list), np.array(rh_angle_list), np.array(lf_angle_list), np.array(lh_angle_list)))
        outputarray[:, 0] = -outputarray[:, 0] + self.adjust_rf0  # inverse the data if needed #-+-,+-+,+-+,-+-
        outputarray[:, 1] = -outputarray[:, 1] + self.adjust_rf1
        outputarray[:, 2] = outputarray[:, 2] + self.adjust_rf2
        outputarray[:, 3] = outputarray[:, 3] + self.adjust_lf0  # inverse the data if needed
        outputarray[:, 4] = outputarray[:, 4] + self.adjust_lf1
        outputarray[:, 5] = -outputarray[:, 5] + self.adjust_lf2
        outputarray[:, 6] = outputarray[:, 6] + self.adjust_rh0  # inverse the data if needed
        outputarray[:, 7] = outputarray[:, 7] + self.adjust_rh1
        outputarray[:, 8] = -outputarray[:, 8] + self.adjust_rh2
        outputarray[:, 9] = -outputarray[:, 9] + self.adjust_lh0  # inverse the data if needed
        outputarray[:, 10] = -outputarray[:, 10] + self.adjust_lh1
        outputarray[:, 11] = outputarray[:, 11] + self.adjust_lh2
        return outputarray

    def generate_slowgait_array(self, width=30.0, height=30.0, angle_per_step=None, rad=None):
        ###########################BIG NOTE###############################################
        #  You can use this function to generate the whole gait planning 12 servos' angle#
        #  rf_angle_list=[] and the others are set to restore the angle data for one leg##
        #  Finally, they merge into one array and return it###############################
        ##################################################################################
        #  The gait generated by this function is slower than the former one,#############
        #  In this function, the other legs won't move when the leg ups,##################
        #  and after two leg moves, all legs moves together.##############################
        ##################################################################################
        rf_angle_list = []
        rh_angle_list = []
        lf_angle_list = []
        lh_angle_list = []
        # if flag == 'FAST_ON_GROUND':
        #########################First Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=width, height=height)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += width
        self.rh_origin_y += 0
        self.lf_origin_y += 0
        self.lh_origin_y += 0
        #########################First Step End######################################################################

        #########################Second Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=width, height=height)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += 0
        self.rh_origin_y += 0
        self.lf_origin_y += 0
        self.lh_origin_y += -width
        #########################Second Step End######################################################################

        #########################Third Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-width / 2, height=0)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-width / 2, height=0)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-width / 2, height=0)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-width / 2, height=0)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += (-width / 2)
        self.rh_origin_y += (width / 2)
        self.lf_origin_y += (-width / 2)
        self.lh_origin_y += (width / 2)
        #########################Third Step End######################################################################

        #########################Fourth Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=width, height=height)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += 0
        self.rh_origin_y += 0
        self.lf_origin_y += (width)
        self.lh_origin_y += 0
        #########################Fourth Step End######################################################################

        #########################Fifth Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=width, height=height)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])

            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += 0
        self.rh_origin_y += (-width)
        self.lf_origin_y += 0
        self.lh_origin_y += 0
        #########################Fifth Step End######################################################################

        #########################Sixth Step Start###################################################################
        rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-width / 2, height=0)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-width / 2, height=0)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-width / 2, height=0)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-width / 2, height=0)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_y += (-width / 2)
        self.rh_origin_y += (width / 2)
        self.lf_origin_y += (-width / 2)
        self.lh_origin_y += (width / 2)
        #########################Sixth Step End######################################################################

        #########################Merge into one Array#################################################################
        outputarray = np.hstack(
            (np.array(rf_angle_list), np.array(rh_angle_list), np.array(lf_angle_list), np.array(lh_angle_list)))
        outputarray[:, 0] = -outputarray[:, 0] + self.adjust_rf0  # inverse the data if needed #-+-,+-+,+-+,-+-
        outputarray[:, 1] = -outputarray[:, 1] + self.adjust_rf1
        outputarray[:, 2] = outputarray[:, 2] + self.adjust_rf2
        outputarray[:, 3] = outputarray[:, 3] + self.adjust_lf0  # inverse the data if needed
        outputarray[:, 4] = outputarray[:, 4] + self.adjust_lf1
        outputarray[:, 5] = -outputarray[:, 5] + self.adjust_lf2
        outputarray[:, 6] = outputarray[:, 6] + self.adjust_rh0  # inverse the data if needed
        outputarray[:, 7] = outputarray[:, 7] + self.adjust_rh1
        outputarray[:, 8] = -outputarray[:, 8] + self.adjust_rh2
        outputarray[:, 9] = -outputarray[:, 9] + self.adjust_lh0  # inverse the data if needed
        outputarray[:, 10] = -outputarray[:, 10] + self.adjust_lh1
        outputarray[:, 11] = outputarray[:, 11] + self.adjust_lh2
        return outputarray

    def generate_3d_line_gait_oneleg(self, flag, target_x, target_y, target_z, data_num):
        if flag == 'rf':  # target_x,y,z are in leg coordinate
            x_list = list(np.linspace(self.rf_origin_x, target_x, data_num))
            y_list = list(np.linspace(self.rf_origin_y, target_y, data_num))
            z_list = list(np.linspace(self.rf_origin_z, target_z, data_num))
        if flag == 'rh':  # target_x,y,z are in leg coordinate
            x_list = list(np.linspace(self.rh_origin_x, target_x, data_num))
            y_list = list(np.linspace(self.rh_origin_y, target_y, data_num))
            z_list = list(np.linspace(self.rh_origin_z, target_z, data_num))
        if flag == 'lf':  # target_x,y,z are in leg coordinate
            x_list = list(np.linspace(self.lf_origin_x, target_x, data_num))
            y_list = list(np.linspace(self.lf_origin_y, target_y, data_num))
            z_list = list(np.linspace(self.lf_origin_z, target_z, data_num))
        if flag == 'lh':  # target_x,y,z are in leg coordinate
            x_list = list(np.linspace(self.lh_origin_x, target_x, data_num))
            y_list = list(np.linspace(self.lh_origin_y, target_y, data_num))
            z_list = list(np.linspace(self.lh_origin_z, target_z, data_num))

        return x_list, y_list, z_list

    def generate_oneleg_moving_array(self, flag, target_x, target_y, target_z, data_num):
        rf_angle_list = []
        rh_angle_list = []
        lf_angle_list = []
        lh_angle_list = []
        if flag == 'rf':
            rf_px_list, rf_py_list, rf_pz_list = self.generate_3d_line_gait_oneleg(flag, target_x, target_y, target_z,
                                                                                   data_num)
            rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            self.rf_origin_y = target_y
            self.rf_origin_x = target_x
            self.rf_origin_z = target_z
        if flag == 'lf':
            lf_px_list, lf_py_list, lf_pz_list = self.generate_3d_line_gait_oneleg(flag, target_x, target_y, target_z,
                                                                                   data_num)
            rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            self.lf_origin_y = target_y
            self.lf_origin_x = target_x
            self.lf_origin_z = target_z
        if flag == 'rh':
            rh_px_list, rh_py_list, rh_pz_list = self.generate_3d_line_gait_oneleg(flag, target_x, target_y, target_z,
                                                                                   data_num)
            rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            self.rh_origin_y = target_y
            self.rh_origin_x = target_x
            self.rh_origin_z = target_z
        if flag == 'lh':
            lh_px_list, lh_py_list, lh_pz_list = self.generate_3d_line_gait_oneleg(flag, target_x, target_y, target_z,
                                                                                   data_num)
            rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            self.lh_origin_y = target_y
            self.lh_origin_x = target_x
            self.lh_origin_z = target_z

        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])

        outputarray = np.hstack(
            (np.array(rf_angle_list), np.array(rh_angle_list), np.array(lf_angle_list), np.array(lh_angle_list)))
        #########################Merge into one Array#################################################################
        outputarray[:, 0] = -outputarray[:, 0] + self.adjust_rf0  # inverse the data if needed #-+-,+-+,+-+,-+-
        outputarray[:, 1] = -outputarray[:, 1] + self.adjust_rf1
        outputarray[:, 2] = outputarray[:, 2] + self.adjust_rf2
        outputarray[:, 3] = outputarray[:, 3] + self.adjust_lf0  # inverse the data if needed
        outputarray[:, 4] = outputarray[:, 4] + self.adjust_lf1
        outputarray[:, 5] = -outputarray[:, 5] + self.adjust_lf2
        outputarray[:, 6] = outputarray[:, 6] + self.adjust_rh0  # inverse the data if needed
        outputarray[:, 7] = outputarray[:, 7] + self.adjust_rh1
        outputarray[:, 8] = -outputarray[:, 8] + self.adjust_rh2
        outputarray[:, 9] = -outputarray[:, 9] + self.adjust_lh0  # inverse the data if needed
        outputarray[:, 10] = -outputarray[:, 10] + self.adjust_lh1
        outputarray[:, 11] = outputarray[:, 11] + self.adjust_lh2
        return outputarray

    def generate_fourlegs_moving_array(self, target_rf, target_rh, target_lf, target_lh, data_num):
        rf_angle_list = []
        rh_angle_list = []
        lf_angle_list = []
        lh_angle_list = []
        rf_px_list, rf_py_list, rf_pz_list = self.generate_3d_line_gait_oneleg('rf', target_rf[0], target_rf[1],
                                                                               target_rf[2], data_num)
        rh_px_list, rh_py_list, rh_pz_list = self.generate_3d_line_gait_oneleg('rh', target_rh[0], target_rh[1],
                                                                               target_rh[2], data_num)
        lf_px_list, lf_py_list, lf_pz_list = self.generate_3d_line_gait_oneleg('lf', target_lf[0], target_lf[1],
                                                                               target_lf[2], data_num)
        lh_px_list, lh_py_list, lh_pz_list = self.generate_3d_line_gait_oneleg('lh', target_lh[0], target_lh[1],
                                                                               target_lh[2], data_num)
        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])
        self.rf_origin_x = target_rf[0]
        self.rf_origin_y = target_rf[1]
        self.rf_origin_z = target_rf[2]
        self.lf_origin_x = target_lf[0]
        self.lf_origin_y = target_lf[1]
        self.lf_origin_z = target_lf[2]
        self.rh_origin_x = target_rh[0]
        self.rh_origin_y = target_rh[1]
        self.rh_origin_z = target_rh[2]
        self.lh_origin_x = target_lh[0]
        self.lh_origin_y = target_lh[1]
        self.lh_origin_z = target_lh[2]
        outputarray = np.hstack(
            (np.array(rf_angle_list), np.array(rh_angle_list), np.array(lf_angle_list), np.array(lh_angle_list)))
        #########################Merge into one Array#################################################################
        outputarray[:, 0] = -outputarray[:, 0] + self.adjust_rf0  # inverse the data if needed #-+-,+-+,+-+,-+-
        outputarray[:, 1] = -outputarray[:, 1] + self.adjust_rf1
        outputarray[:, 2] = outputarray[:, 2] + self.adjust_rf2
        outputarray[:, 3] = outputarray[:, 3] + self.adjust_lf0  # inverse the data if needed
        outputarray[:, 4] = outputarray[:, 4] + self.adjust_lf1
        outputarray[:, 5] = -outputarray[:, 5] + self.adjust_lf2
        outputarray[:, 6] = outputarray[:, 6] + self.adjust_rh0  # inverse the data if needed
        outputarray[:, 7] = outputarray[:, 7] + self.adjust_rh1
        outputarray[:, 8] = -outputarray[:, 8] + self.adjust_rh2
        outputarray[:, 9] = -outputarray[:, 9] + self.adjust_lh0  # inverse the data if needed
        outputarray[:, 10] = -outputarray[:, 10] + self.adjust_lh1
        outputarray[:, 11] = outputarray[:, 11] + self.adjust_lh2
        return outputarray

    def generate_2d_gait_detach(self, flag, width, height, data_num=0):  # generate the target positon list
        if data_num == 0:
            data_num = self._DATANUM_FOR_PERSTEP
        if flag == 'rf':
            y_list_temp = list(np.linspace(0, width / 2, data_num))
            if width == 0:
                z_list_temp = [0 for y in y_list_temp]
            else:
                z_list_temp = [-(4 * height) * y ** 2 / (width ** 2) + (4 * height) * y / width for y in y_list_temp]
            y_list = np.array([self.rf_origin_y + item for item in y_list_temp])
            z_list = np.array([self.rf_origin_z + item for item in z_list_temp])
            x_list = np.array([self.rf_origin_x for item in y_list_temp])
        if flag == 'rh':
            width = -width
            y_list_temp = list(np.linspace(0, width / 2, self._DATANUM_FOR_PERSTEP))
            if width == 0:
                z_list_temp = [0 for y in y_list_temp]
            else:
                z_list_temp = [-(4 * height) * y ** 2 / (width ** 2) + (4 * height) * y / width for y in y_list_temp]
            y_list = np.array([self.rh_origin_y + item for item in y_list_temp])
            z_list = np.array([self.rh_origin_z + item for item in z_list_temp])
            x_list = np.array([self.rh_origin_x for item in y_list_temp])
        if flag == 'lf':
            y_list_temp = list(np.linspace(0, width / 2, self._DATANUM_FOR_PERSTEP))
            if width == 0:
                z_list_temp = [0 for y in y_list_temp]
            else:
                z_list_temp = [-(4 * height) * y ** 2 / (width ** 2) + (4 * height) * y / width for y in y_list_temp]
            y_list = np.array([self.lf_origin_y + item for item in y_list_temp])
            z_list = np.array([self.lf_origin_z + item for item in z_list_temp])
            x_list = np.array([self.lf_origin_x for item in y_list_temp])
        if flag == 'lh':
            width = -width
            y_list_temp = list(np.linspace(0, width / 2, self._DATANUM_FOR_PERSTEP))
            if width == 0:
                z_list_temp = [0 for y in y_list_temp]
            else:
                z_list_temp = [-(4 * height) * y ** 2 / (width ** 2) + (4 * height) * y / width for y in y_list_temp]
            y_list = np.array([self.lh_origin_y + item for item in y_list_temp])
            z_list = np.array([self.lh_origin_z + item for item in z_list_temp])
            x_list = np.array([self.lh_origin_x for item in y_list_temp])
        return x_list, y_list, z_list

    def generate_oneleg_detach_array(self, flag, width, height, data_num):
        rf_angle_list = []
        rh_angle_list = []
        lf_angle_list = []
        lh_angle_list = []
        if flag == 'rf':
            rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_detach(flag, width, height, data_num)
            rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            self.rf_origin_y = self.rf_origin_y + width / 2
            self.rf_origin_z = self.rf_origin_z + height
        if flag == 'lf':
            lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_detach(flag, width, height, data_num)
            rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            self.lf_origin_y = self.lf_origin_y + width / 2
            self.lf_origin_z = self.lf_origin_z + height
        if flag == 'rh':
            rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_detach(flag, width, height, data_num)
            rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_oneleg('lh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            self.rh_origin_y = self.rh_origin_y - width / 2
            self.rh_origin_z = self.rh_origin_z + height
        if flag == 'lh':
            lh_px_list, lh_py_list, lh_pz_list = self.generate_2d_gait_detach(flag, width, height, data_num)
            rh_px_list, rh_py_list, rh_pz_list = self.generate_2d_gait_oneleg('rh', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            lf_px_list, lf_py_list, lf_pz_list = self.generate_2d_gait_oneleg('lf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            rf_px_list, rf_py_list, rf_pz_list = self.generate_2d_gait_oneleg('rf', width=-0.0, height=0.0,
                                                                              data_num=data_num)
            self.lh_origin_y = self.lh_origin_y - width / 2
            self.lh_origin_z = self.lh_origin_z + height

        for i in range(len(rf_px_list)):
            rf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rf_px_list[i], rf_py_list[i], rf_pz_list[i])])
            rh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lf_px_list[i], lf_py_list[i], lf_pz_list[i])])
            lf_angle_list.append([rad * 180 / 3.14 for rad in self.ik(rh_px_list[i], rh_py_list[i], rh_pz_list[i])])
            lh_angle_list.append([rad * 180 / 3.14 for rad in self.ik(lh_px_list[i], lh_py_list[i], lh_pz_list[i])])

        outputarray = np.hstack(
            (np.array(rf_angle_list), np.array(rh_angle_list), np.array(lf_angle_list), np.array(lh_angle_list)))
        #########################Merge into one Array#################################################################
        outputarray[:, 0] = -outputarray[:, 0] + self.adjust_rf0  # inverse the data if needed #-+-,+-+,+-+,-+-
        outputarray[:, 1] = -outputarray[:, 1] + self.adjust_rf1
        outputarray[:, 2] = outputarray[:, 2] + self.adjust_rf2
        outputarray[:, 3] = outputarray[:, 3] + self.adjust_lf0  # inverse the data if needed
        outputarray[:, 4] = outputarray[:, 4] + self.adjust_lf1
        outputarray[:, 5] = -outputarray[:, 5] + self.adjust_lf2
        outputarray[:, 6] = outputarray[:, 6] + self.adjust_rh0  # inverse the data if needed
        outputarray[:, 7] = outputarray[:, 7] + self.adjust_rh1
        outputarray[:, 8] = -outputarray[:, 8] + self.adjust_rh2
        outputarray[:, 9] = -outputarray[:, 9] + self.adjust_lh0  # inverse the data if needed
        outputarray[:, 10] = -outputarray[:, 10] + self.adjust_lh1
        outputarray[:, 11] = outputarray[:, 11] + self.adjust_lh2
        return outputarray

