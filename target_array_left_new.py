from Target_Generator import TargetGene
import numpy as np
import math
width_fc = 5.0  # 30
angle = 5.0 / 180 * math.pi
wid = 236
length = 330
leg = (wid**2 + length**2)**0.5
a = math.asin(330 / leg)
rh_new = [70 - (wid - wid * math.cos(angle)), wid * math.sin(angle) + 50 + width_fc]
rf_new = [70 - (wid - leg * math.cos(angle + a)), leg * math.sin(angle + a) - length + 50 + width_fc]
lf_new = [70 + length * math.sin(angle), -(length - length * math.cos(angle)) + 50 + width_fc]
lh_new = [70, 50 + width_fc]

width = 20  # 30
height = 60
depth = 5
time_period = 0.01
gecko = TargetGene()

detach_time = 1.5
attach_time0 = 0.75
attach_time1 = 0.15
moving_time = 0.5

gecko.present_position = {'rf': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3]),
                          'rh': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3 - 8]),
                          'lf': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3]),
                          'lh': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3 - 8])}


# step 0
p_detach, v_detach = gecko.moving('rf', detach_time, time_period, np.array([gecko.L1, gecko.L2 + width, -gecko.L3]))
p_moving0, v_moving0 = gecko.moving('rf', attach_time0, time_period, np.array([gecko.L1 - width, gecko.L2 + width, -gecko.L3]))
rf_target_p = np.vstack((p_detach, p_moving0))
rf_target_v = np.vstack((v_detach, v_moving0))


rh_target_p, rh_target_v = gecko.steady('rh', int(rf_target_p.shape[0]))
lf_target_p, lf_target_v = gecko.steady('lf', int(rf_target_p.shape[0]))
lh_target_p, lh_target_v = gecko.steady('lh', int(rf_target_p.shape[0]))

target_p0 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v0 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

# step 2
p_detach, v_detach = gecko.moving('lf', detach_time, time_period, np.array([gecko.L1, gecko.L2 + width, -gecko.L3]))
p_moving0, v_moving0 = gecko.moving('lf', attach_time0, time_period, np.array([gecko.L1 + width, gecko.L2 + width, -gecko.L3]))
lf_target_p = np.vstack((p_detach, p_moving0))
lf_target_v = np.vstack((v_detach, v_moving0))

rh_target_p, rh_target_v = gecko.steady('rh', int(lf_target_p.shape[0]))
rf_target_p, rf_target_v = gecko.steady('rf', int(lf_target_p.shape[0]))
lh_target_p, lh_target_v = gecko.steady('lh', int(lf_target_p.shape[0]))

target_p2 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v2 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

rf_target_p, rf_target_v = gecko.moving('rf', moving_time, time_period, np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3]))
rh_target_p, rh_target_v = gecko.moving('rh', moving_time, time_period, np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3 - 8]))
lf_target_p, lf_target_v = gecko.moving('lf', moving_time, time_period, np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3]))
lh_target_p, lh_target_v = gecko.moving('lh', moving_time, time_period, np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3 - 8]))
target_p_m0 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v_m0 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

target_p = np.vstack((target_p0, target_p2, target_p_m0))
target_v = np.vstack((target_v0, target_v2, target_v_m0))

np.savetxt('target_p_left.csv', target_p, delimiter=',')
np.savetxt('target_v_left.csv', target_v, delimiter=',')



