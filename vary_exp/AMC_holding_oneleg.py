from dynamixel.mt_dxl import DxlAPI
from dynamixel.Target_generator_xlversion import TargetGene
import math
import time
import numpy as np

# Target
width = 20  # 30
height = 40

time_period = 0.01
gecko = TargetGene()
gecko.L1 = 52.0
gecko.L2 = 35.0
gecko.L3 = 20.0
alpha = 3.1415 * 30 / 180

detach_time = 1.0
attach_time0 = 0.5
attach_time1 = 0.15
moving_time = 0.5

gecko.present_position = {'rf': np.array([gecko.L1, gecko.L2, -gecko.L3]),
                          'rh': np.array([gecko.L1, gecko.L2, -gecko.L3]),
                          'lf': np.array([gecko.L1, gecko.L2, -gecko.L3]),
                          'lh': np.array([gecko.L1, gecko.L2, -gecko.L3])}

# step 0
p_detach = gecko.detach('rf', detach_time, time_period, width, height, alpha)
p_moving0 = gecko.moving('rf', attach_time0, time_period, np.array([gecko.L1, gecko.present_position['rf'][1],
                                                             -gecko.L3 - 8]), para=0.1)
p_moving1 = gecko.moving('rf', attach_time1, time_period, np.array([gecko.L1, gecko.present_position['rf'][1],
                                                             -gecko.L3]), para=0.1)                                                             

rf_target_p = np.vstack((p_detach, p_moving0, p_moving1))


v_t = 0.0  # target velocity
p_t = 0.0  # target position
v_p = 0.0  # present velocity
p_p = 0.0  # present position
beta = 0.01  # parameter
a = 20.0  # parameter
b = 5.0  # parameter
motor0 = DxlAPI([0, 1, 2], '/dev/ttyAMA0', 3000000)
motor0.set_operating_mode('p')
motor0.torque_enable()
print('begin!')
K = 0.5
D = 0.5
for item in rf_target_p:
    t0 = time.time()
    motor0.set_position(item)
    t1 = time.time()
    if (time_period - (t1 - t0)>0):
        time.sleep(time_period - (t1 - t0))
    
motor0.torque_disable()

print('ok!')
