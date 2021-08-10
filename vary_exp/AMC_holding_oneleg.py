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
motor0 = DxlAPI([2], '/dev/tty.usbserial-FT2XP85O')
motor0.set_operating_mode('t')
motor0.torque_enable()
print('begin!')
K = 0.5
D = 0.5
for i in range(2000):
    v_p = motor0.get_velocity()
    p_p = motor0.get_position()
    calc_torque = K*(0 - p_p) + D*(0-v_p)
    motor0.set_torque(calc_torque)
motor0.torque_disable()

print('ok!')
