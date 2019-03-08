from mt_dxl import DxlAPI
import math
import time
import numpy as np
import pandas as pd
target_pNv_array = np.array(pd.read_csv('pNv_array.csv'))
print('Target array loaded.')
target_p = target_pNv_array[:, 0:3]
target_p = target_p * 4096 / 2 / math.pi + 2047
# motor initialize
motor_group = DxlAPI([0, 1, 2], 'COM3')
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
motor_group.set_position([2047, 2047, 2047])
time.sleep(1)
print('position control begin!')
all0 = time.time()
for i in range(len(target_p)):
    p = [int(item) for item in target_p[i]]
    A = time.time()
    motor_group.set_position(p)
    B = time.time()
    print(B-A)
    # time.sleep(0.025-(B-A))
motor_group.torque_disable()
all1 = time.time()

print(all1-all0)
