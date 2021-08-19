from dynamixel.mt_dxl import DxlAPI
import math
import time
import numpy as np
import pandas as pd
from Target_Generator import TargetGene

# target_pNv_array = np.array(pd.read_csv('pNv_array.csv'))
# print('Target array loaded.')
width = 40  # 30
height = 60
depth = 5
time_period = 0.01
gecko = TargetGene()

detach_time = 1.5
attach_time0 = 0.75
attach_time1 = 0.15
moving_time = 0.5

gecko.present_position = {'rf': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3]),
                          'rh': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3 - 8]),
                          'lf': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3]),
                          'lh': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3 - 8])}

# step 0
p_detach, v_detach = gecko.detach('rf', detach_time, time_period, width, height)
p_moving0, v_moving0 = gecko.moving('rf', attach_time0, time_period, np.array([gecko.L1, gecko.present_position['rf'][1],
                                                             gecko.present_position['rf'][2] - (height + depth)]))
p_moving1, v_moving1 = gecko.moving('rf', attach_time1, time_period, np.array([gecko.L1, gecko.present_position['rf'][1],
                                                               gecko.present_position['rf'][2] + depth]))
target_p = np.vstack((p_detach, p_moving0, p_moving1))
target_v = np.vstack((v_detach, v_moving0, v_moving1))

target_p[:, 1] = target_p[:, 1]
target_p[:, 2] = target_p[:, 2]
target_v[:, 1] = target_v[:, 1]
target_v[:, 2] = target_v[:, 2]
# Setting running mode
MODE = 1  # 1 is AMC, 2 is Spring Damping Control

# motor initialize
motor_group = DxlAPI([0, 1, 2], '/dev/ttyUSB0')
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
motor_group.set_position(target_p[0, :])
time.sleep(3)
motor_group.torque_disable()
# torque control mode initialize
motor_group.set_operating_mode('t')
motor_group.torque_enable()
#
breaking_flag = 0
p_rec = []
v_rec = []
t_rec = []
calc_torque_rec = []
# Parameter Setting
if MODE == 1:
    beta = np.array([[0.02], [0.01], [0.01]])  # parameter # looks good
    a = np.array([[1.0, 1.5, 4.0]])  # parameter # 17
    b = np.array([[0.6, 0.8, 2.2]])  # parameter # 8
if MODE == 2:
    K = 0.3
    D = 0.2

if MODE == 1:
    print('AMC begin!')
    all0 = time.time()
    for i in range(len(target_p)):
        t0 = time.time()
        v_t = target_v[i]
        p_t = target_p[i]
        t_p = motor_group.get_torque()
        v_p = motor_group.get_velocity()  # 1xn
        p_p = motor_group.get_position()  # 1xn
        v_e = np.array([v_p - v_t]).T  # velocity error nx1
        p_e = np.array([p_p - p_t]).T  # position error nx1
        tra_diff = p_e + beta * v_e  # track difference error(t) nx1
        co_diff = a / (1 + b * np.linalg.norm(tra_diff) ** 2)  # gamma(t) 1xn
        ff = tra_diff / co_diff.T  # force F(t) nx1
        # p_gain = np.dot(ff, p_e.T)  # nxn
        # d_gain = np.dot(ff, v_e.T)  # nxn
        # p_gain = ff * p_e  # nx1
        # d_gain = ff * v_e  # nx1
        p_gain = np.array([[0.010, 0.02, 0.01]]).T
        d_gain = np.array([[0.010, 0.02, 0.01]]).T
        # calc_torque = (-ff - np.dot(p_gain, p_e) - np.dot(d_gain, v_e)).T[0]  # (nx1).T[0]
        if i<150:
            calc_torque = (-1 * ff - p_gain * p_e - d_gain * v_e).T[0]
        else:
            calc_torque = (-0.1 * ff - p_gain * p_e - d_gain * v_e).T[0]
        for t in calc_torque.tolist():
            if t > 5 or t < -5:
                motor_group.torque_disable()
                motor_group.portHandler.closePort()
                breaking_flag = 1
        if breaking_flag == 1:
            break
        motor_group.set_torque(calc_torque.tolist())
        v_rec.append(v_p)
        p_rec.append(p_p)
        t_rec.append(t_p)
        calc_torque_rec.append(calc_torque)
        t1 = time.time()
        if (0.01 - (t1 - t0)) > 0:
            time.sleep(0.01 - (t1 - t0))
        print("Time for one period: %f" % (t1 - t0))
    motor_group.torque_disable()
    motor_group.portHandler.closePort()
    print('ok!')

if MODE == 2:
    print('Spring Damping Control begin!')
    for i in range(len(target_p)):
        A = time.time()
        v_p = motor_group.get_velocity()
        p_p = motor_group.get_position()
        v_t = target_v[i]
        p_t = target_p[i]
        v_e = v_p - v_t  # velocity error
        p_e = p_p - p_t  # position error
        calc_torque = - K * p_e - D * v_e
        motor_group.set_torque(calc_torque.tolist())
        B = time.time()
    motor_group.torque_disable()
    motor_group.portHandler.closePort()
