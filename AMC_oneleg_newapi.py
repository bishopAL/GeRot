from mt_dxl import DxlAPI
import math
import time
import numpy as np
import pandas as pd
target_pNv_array = np.array(pd.read_csv('pNv_array.csv'))
print('Target array loaded.')
target_p = target_pNv_array[:, 0:3]
target_v = target_pNv_array[:, 3:6]

# Setting running mode
MODE = 1  # 1 is AMC, 2 is force position hybrid control

# motor initialize
motor_group = DxlAPI([0, 1, 2], 'COM3')
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
motor_group.set_position([2047, 2047, 2047])
time.sleep(1)
motor_group.torque_disable()
# torque control mode initialize
motor_group.set_operating_mode('t')
motor_group.torque_enable()

# Parameter Setting
if MODE == 1:
    beta = 0.2  # parameter
    a = 2.0  # parameter
    b = 1.0  # parameter
if MODE == 2:
    K = 0.5
    D = 0.1

if MODE == 1:
    print('AMC begin!')
    for i in range(len(target_p)):
        A = time.time()
        v_p = motor_group.get_velocity()
        p_p = motor_group.get_position()
        v_t = target_v[i]
        p_t = target_p[i]
        v_e = v_p - v_t  # velocity error
        p_e = p_p - p_t  # position error
        tra_diff = p_e + beta * v_e  # track difference error(t)
        co_diff = a / (1 + b * np.linalg.norm(tra_diff)**2)  # gamma(t)
        ff = tra_diff / co_diff  # force F(t)
        p_gain = ff * p_e
        d_gain = ff * v_e
        calc_torque = -ff - p_gain * p_e - d_gain * v_e
        motor_group.set_torque(calc_torque.tolist())
        B = time.time()
        time.sleep(0.015-(B-A))
        print i, calc_torque, B-A
    motor_group.torque_disable()
    print('ok!')
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
        time.sleep(0.02-(B-A))
        print i, calc_torque, B-A
    motor_group.torque_disable()