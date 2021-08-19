from Target_Generator_XLversion import TargetGene
import numpy as np

width = 30  # 30
height = 30
depth = 5
time_period = 0.01
gecko = TargetGene()
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
p_detach, v_detach, para_detach = gecko.detach('rf', detach_time, time_period, width, height, alpha)
p_moving0, v_moving0, para_moving0 = gecko.moving('rf', attach_time0, time_period, np.array([gecko.L1, gecko.present_position['rf'][1],
                                                             -gecko.L3 - 8]), para=0.1)
p_moving1, v_moving1, para_moving0 = gecko.moving('rf', attach_time1, time_period, np.array([gecko.L1, gecko.present_position['rf'][1],
                                                             -gecko.L3]), para=0.1)                                                             

rf_target_p = np.vstack((p_detach, p_moving0, p_moving1))
print('done!')

