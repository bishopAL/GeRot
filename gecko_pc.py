import numpy as np
from mt_dxl import DxlAPI
import time

target_p = np.loadtxt("target_p.csv", delimiter=",")
target_v = np.loadtxt("target_v.csv", delimiter=",")
target_p[:, 1:7] = -target_p[:, 1:7]
target_v[:, 1:7] = -target_v[:, 1:7]
motor_group = DxlAPI(range(12), 'COM3')
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
for item in target_p:
    motor_group.set_position(item)
    time.sleep(0.005)
motor_group.torque_disable()
motor_group.portHandler.closePort()
