from mt_dxl import DxlAPI
import math
import time
import numpy as np
import pandas as pd

# motor initialize
motor_group = DxlAPI(range(12), 'COM3')
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
motor_group.set_position([2047 for i in range(12)])
time.sleep(5)
motor_group.torque_disable()
# torque control mode initialize
motor_group.set_operating_mode('t')
motor_group.torque_enable()
p_rec = []
v_t = [0 for i in range(12)]  # 1xn
p_t = [0 for i in range(12)]  # 1xn
beta = 0.02  # parameter
a = np.array([[1.5, 3.0, 7.0]])  # parameter # 17
b = np.array([[0.4, 1.5, 4.0]])  # parameter # 8
print('AMC begin!')


for i in range(1000):
    A = time.time()
    v_p = motor_group.get_velocity()  # 1xn
    p_p = motor_group.get_position()  # 1xn
    p_rec.append(p_p)
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

motor_group.torque_disable()
motor_group.portHandler.closePort()
print('ok!')

