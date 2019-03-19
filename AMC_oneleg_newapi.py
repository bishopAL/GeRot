from mt_dxl import DxlAPI
import math
import time
import numpy as np
import pandas as pd
from Target_Generator import TargetGene
# target_pNv_array = np.array(pd.read_csv('pNv_array.csv'))
# print('Target array loaded.')
oneleg = TargetGene()
oneleg.present_position = {'rf': np.array([oneleg.L1, oneleg.L2 - 15, -oneleg.L3]),
                         'rh': np.array([oneleg.L1, oneleg.L2 - 15, -oneleg.L3]),
                         'lf': np.array([oneleg.L1, oneleg.L2, -oneleg.L3]),
                         'lh': np.array([oneleg.L1, oneleg.L2, -oneleg.L3])}
detach = oneleg.detach('rf', 2, 0.01, 30, 40)
moving = oneleg.moving('rf', 1, 0.01, np.array([oneleg.L1, oneleg.L2 + 15, -oneleg.L3]))
#  target_pNv_array = np.vstack((detach_array, attach_array0, attach_array1))
target_pNv_array = np.vstack((detach, moving))
target_p = target_pNv_array[:, 0:3]
target_p[:, 1] = -target_p[:, 1]
target_p[:, 2] = -target_p[:, 2]
target_v = target_pNv_array[:, 3:6]
target_v[:, 1] = -target_v[:, 1]
target_v[:, 2] = -target_v[:, 2]
p_rec = []
init_position = (target_p[0, :] / (2 * math.pi) * 4096 + 2047).tolist()
init_position = [int(i) for i in init_position]
# Setting running mode
MODE = 1  # 1 is AMC, 2 is force position hybrid control

# motor initialize
motor_group = DxlAPI([0, 1, 2], 'COM3')
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
motor_group.set_position(init_position)
time.sleep(1)
motor_group.torque_disable()
# torque control mode initialize
motor_group.set_operating_mode('t')
motor_group.torque_enable()
#
# Parameter Setting
if MODE == 1:
    beta = np.array([[0.1], [0.02], [0.1]])  # parameter
    a = np.array([[2.0, 1.0, 7.0]])  # parameter # 17
    b = np.array([[1.0, 0.3, 4.0]])  # parameter # 8
if MODE == 2:
    K = 0.3
    D = 0.2

if MODE == 1:
    print('AMC begin!')
    all0 = time.time()
    for i in range(len(target_p)):
        if i > 200:
            beta = np.array([[0.05], [0.05], [0.05]])  # parameter
            a = np.array([[5.0, 2.0, 7.0]])  # parameter # 17
            b = np.array([[3.0, 1.0, 4.0]])  # parameter # 8
        A = time.time()
        v_p = motor_group.get_velocity()  # 1xn
        p_p = motor_group.get_position()  # 1xn
        p_rec.append(p_p)
        v_t = target_v[i]  # 1xn
        p_t = target_p[i]  # 1xn
        v_e = np.array([v_p - v_t]).T  # velocity error nx1
        p_e = np.array([p_p - p_t]).T  # position error nx1
        tra_diff = p_e + beta * v_e  # track difference error(t) nx1
        co_diff = a / (1 + b * np.linalg.norm(tra_diff)**2)  # gamma(t) 1xn
        ff = tra_diff / co_diff.T  # force F(t) nx1
        p_gain = np.dot(ff, p_e.T)  # nxn
        d_gain = np.dot(ff, v_e.T)  # nxn
        calc_torque = (-ff - np.dot(p_gain, p_e) - np.dot(d_gain, v_e)).T[0]  # (nx1).T[0]
        motor_group.set_torque(calc_torque.tolist())
        B = time.time()
        time.sleep(0.010-(B-A))
        print i, calc_torque, p_p[0], p_t[0]
        all1 = time.time()
    motor_group.torque_disable()
    motor_group.portHandler.closePort()
    print('ok!')
    print(all1-all0)

if MODE == 2:
    print('force position hybrid control begin!')
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
        print i, calc_torque, B-A
    motor_group.torque_disable()
    motor_group.portHandler.closePort()
