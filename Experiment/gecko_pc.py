import numpy as np
from dynamixel.mt_dxl import DxlAPI
import time

target_p = np.loadtxt("target_p.csv", delimiter=",")
target_v = np.loadtxt("target_v.csv", delimiter=",")
target_p[:, 3:9] = -target_p[:, 3:9]
target_v[:, 3:9] = -target_v[:, 3:9]
target_p[:, 4] = -target_p[:, 4]
target_v[:, 4] = -target_v[:, 4]
target_p[:, 10] = -target_p[:, 10]
target_v[:, 10] = -target_v[:, 10]
target_p[:, 5] = -target_p[:, 5]
target_v[:, 5] = -target_v[:, 5]
target_p[:, 11] = -target_p[:, 11]
target_v[:, 11] = -target_v[:, 11]


motor_group = DxlAPI(range(12), '/dev/ttyUSB0', 4000000)
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
p_rec = []
t_rec = []
for j in range(2):
    for i, item in enumerate(target_p):
        t0 = time.time()
        motor_group.set_position(item)
        t_p = motor_group.get_torque()
        p_p = motor_group.get_position()  # 1xn
        time.sleep(0.005)
        if i == 0 and j == 0:
            time.sleep(5)
        t1 = time.time()
        if (0.01 - (t1 - t0)) > 0:
            time.sleep(0.01 - (t1 - t0))
        print("time for one period:", t1 - t0)
        t_rec.append(t_p)
        p_rec.append(p_p)
motor_group.torque_disable()
motor_group.portHandler.closePort()
