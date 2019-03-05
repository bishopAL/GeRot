from dxl_api import DxlAPI
import math
import time
import numpy as np
import pandas as pd

target_pNv_array = np.array(pd.read_csv('pNv_array.csv'))
print('Target array loaded.')
target_j0_p = target_pNv_array[:, 0]
target_j0_v = target_pNv_array[:, 3]
target_j1_p = target_pNv_array[:, 1]
target_j1_v = target_pNv_array[:, 4]
target_j2_p = target_pNv_array[:, 2]
target_j2_v = target_pNv_array[:, 5]

# v_t = 0.0  # target velocity
# p_t = 0.0  # target position
# v_p = 0.0  # present velocity
# p_p = 0.0  # present position
beta = 0.05  # parameter
a = 5.0  # parameter
b = 2.0  # parameter
motor0 = DxlAPI([0, 1, 2], 'COM3')
motor0.set_operating_mode('t')
print('begin!')
for i in range(len(target_j0_p)):
    A = time.time()
    v_p = motor0.get_velocity()
    p_p = motor0.get_position()
    v_t = target_j0_v[i]
    p_t = target_j0_p[i]
    v_e = v_p - v_t  # velocity error
    p_e = p_p - p_t  # position error
    tra_diff = p_e + beta * v_e  # track difference error(t)
    co_diff = a / (1 + b * tra_diff * tra_diff)  # gamma(t)
    ff = tra_diff / co_diff  # force F(t)
    p_gain = ff * p_e
    d_gain = ff * v_e
    calc_torque = -ff - p_gain * p_e - d_gain * v_e
    if calc_torque < -5:
        calc_torque = -5
    elif calc_torque > 5:
        calc_torque = 5
    motor0.set_torque(calc_torque)
    B = time.time()
    print i, calc_torque, B-A
motor0.torque_disable()
print('ok!')
