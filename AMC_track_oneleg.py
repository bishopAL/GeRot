from mt_dxl import DxlAPI
import math
import time
import numpy as np
import pandas as pd

v_t = 0.0  # target velocity
p_t = 0.0  # target position
v_p = 0.0  # present velocity
p_p = 0.0  # present position
beta = 0.01  # parameter
a = 20.0  # parameter
b = 5.0  # parameter
motor0 = DxlAPI([13], 'COM3')
motor0.set_operating_mode('t')
motor0.torque_enable()
print('begin!')
for i in range(2000):
    A = time.time()
    v_p = motor0.get_velocity()
    p_p = motor0.get_position()
    v_e = v_p - v_t  # velocity error
    p_e = p_p - p_t  # position error
    tra_diff = p_e + beta * v_e  # track difference error(t)
    co_diff = a / (1 + b * np.linalg.norm(tra_diff)**2)  # gamma(t)
    ff = tra_diff / co_diff  # force F(t)
    p_gain = ff * p_e
    d_gain = ff * v_e
    calc_torque = -ff - p_gain * p_e - d_gain * v_e
    motor0.set_torque(calc_torque)
    B = time.time()
    print i, calc_torque, B-A
motor0.torque_disable()

print('ok!')
