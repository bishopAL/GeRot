from Target_Generator import TargetGene
import numpy as np

width = 19  # 30
height = 60
horizen = 8
depth = 2
time_period = 0.01
gecko = TargetGene()

alpha = [1.3, 0.5, 1]  # detach, attach, moving para

detach_time = 1.5
attach_time0 = 0.75
attach_time1 = 0.15
moving_time = 0.5

gecko.present_position = {'rf': np.array([gecko.L1, gecko.L2+25, -gecko.L3]), # X horizen, Y forward, Z normal
                          'rh': np.array([gecko.L1, gecko.L2+25, -gecko.L3 - 8]),
                          'lf': np.array([gecko.L1, gecko.L2+25, -gecko.L3]),
                          'lh': np.array([gecko.L1, gecko.L2+25, -gecko.L3 - 8])}

# step 0
p_detach, v_detach, para_detach = gecko.detachxz('rf', detach_time, time_period, -width, height)
p_moving0, v_moving0, para_moving0 = gecko.moving('rf', attach_time0, time_period, np.array([gecko.present_position['rf'][0], gecko.present_position['rf'][1],
                                                             gecko.present_position['rf'][2] - (height + depth)]), para=0.1)
p_moving1, v_moving1, para_moving1 = gecko.moving('rf', attach_time1, time_period, np.array([gecko.present_position['rf'][0], gecko.present_position['rf'][1] ,
                                                               gecko.present_position['rf'][2] + depth]), para=0.1)
rf_target_p = np.vstack((p_detach, p_moving0, p_moving1))
rf_target_v = np.vstack((v_detach, v_moving0, v_moving1))
rf_target_para = np.vstack((para_detach, para_moving0, para_moving1))

rh_target_p, rh_target_v, rh_target_para = gecko.steady('rh', int(rf_target_p.shape[0]))
lf_target_p, lf_target_v, lf_target_para = gecko.steady('lf', int(rf_target_p.shape[0]))
lh_target_p, lh_target_v, lh_target_para = gecko.steady('lh', int(rf_target_p.shape[0]))

target_p0 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v0 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))
target_para0 = np.hstack((rf_target_para, rh_target_para, lf_target_para, lh_target_para))

# step 2
p_detach, v_detach, para_detach = gecko.detachxz('rh', detach_time, time_period, -width, height)
p_moving0, v_moving0, para_moving0 = gecko.moving('rh', attach_time0, time_period, np.array([gecko.present_position['rh'][0], gecko.present_position['rh'][1],
                                                             gecko.present_position['rh'][2] - (height + depth)]), para=0.1)
p_moving1, v_moving1, para_moving1 = gecko.moving('rh', attach_time1, time_period, np.array([gecko.present_position['rh'][0], gecko.present_position['rh'][1],
                                                               gecko.present_position['rh'][2] + depth]), para=0.1)
rh_target_p = np.vstack((p_detach, p_moving0, p_moving1))
rh_target_v = np.vstack((v_detach, v_moving0, v_moving1))
rh_target_para = np.vstack((para_detach, para_moving0, para_moving1))

rf_target_p, rf_target_v, rf_target_para = gecko.steady('rf', int(rh_target_p.shape[0]))
lf_target_p, lf_target_v, lf_target_para = gecko.steady('lf', int(rh_target_p.shape[0]))
lh_target_p, lh_target_v, lh_target_para = gecko.steady('lh', int(rh_target_p.shape[0]))

target_p2 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v2 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))
target_para2 = np.hstack((rf_target_para, rh_target_para, lf_target_para, lh_target_para))

# moving 0
#rf_target_p, rf_target_v, rf_target_para = gecko.moving('rf', moving_time, time_period, np.array([gecko.present_position['rf'][0], gecko.present_position['rf'][1],
#                                                                 gecko.present_position['rf'][2]]), para=0.5)
#rh_target_p, rh_target_v, rh_target_para = gecko.moving('rh', moving_time, time_period, np.array([gecko.present_position['rh'][0], gecko.present_position['rh'][1],
#                                                                 gecko.present_position['rh'][2]]), para=0.5)
#lf_target_p, lf_target_v, lf_target_para = gecko.moving('lf', moving_time, time_period, np.array([gecko.present_position['lf'][0], gecko.present_position['lf'][1],
#                                                                 gecko.present_position['lf'][2]]), para=0.5)
#lh_target_p, lh_target_v, lh_target_para = gecko.moving('lh', moving_time, time_period, np.array([gecko.present_position['lh'][0], gecko.present_position['lh'][1],
#                                                                 gecko.present_position['lh'][2]]), para=0.5)
#target_p_m0 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
#target_v_m0 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))
#target_para_m0 = np.hstack((rf_target_para, rh_target_para, lf_target_para, lh_target_para))

# step 1
p_detach, v_detach, para_detach = gecko.detachxz('lf', detach_time, time_period, -width, height)
p_moving0, v_moving0, para_moving0 = gecko.moving('lf', attach_time0, time_period, np.array([gecko.present_position['lf'][0]+2*width, gecko.present_position['lf'][1],
                                                             gecko.present_position['lf'][2] - (height + depth)]), para=0.1)
p_moving1, v_moving1, para_moving1 = gecko.moving('lf', attach_time1, time_period, np.array([gecko.present_position['lf'][0], gecko.present_position['lf'][1],
                                                             gecko.present_position['lf'][2] - depth]), para=0.1)
lf_target_p = np.vstack((p_detach, p_moving0, p_moving1))
lf_target_v = np.vstack((v_detach, v_moving0, v_moving1))
lf_target_para = np.vstack((para_detach, para_moving0, para_moving1))

rh_target_p, rh_target_v, rh_target_para = gecko.steady('rh', int(lf_target_p.shape[0]))
rf_target_p, rf_target_v, rf_target_para = gecko.steady('rf', int(lf_target_p.shape[0]))
lh_target_p, lh_target_v, lh_target_para = gecko.steady('lh', int(lf_target_p.shape[0]))

target_p1 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v1 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))
target_para1 = np.hstack((rf_target_para, rh_target_para, lf_target_para, lh_target_para))

# step 3
p_detach, v_detach, para_detach = gecko.detachxz('lh', detach_time, time_period, -width, height)
p_moving0, v_moving0, para_moving0 = gecko.moving('lh', attach_time0, time_period, np.array([gecko.present_position['lh'][0]+2*width, gecko.present_position['lh'][1],
                                                             gecko.present_position['lh'][2] - (height + depth)]), para=0.1)
p_moving1, v_moving1, para_moving1 = gecko.moving('lh', attach_time1, time_period, np.array([gecko.present_position['lh'][0], gecko.present_position['lh'][1],
                                                             gecko.present_position['lh'][2] - depth]), para=0.1)
lh_target_p = np.vstack((p_detach, p_moving0, p_moving1))
lh_target_v = np.vstack((v_detach, v_moving0, v_moving1))
lh_target_para = np.vstack((para_detach, para_moving0, para_moving1))

rf_target_p, rf_target_v, rf_target_para = gecko.steady('rf', int(rh_target_p.shape[0]))
lf_target_p, lf_target_v, lf_target_para = gecko.steady('lf', int(rh_target_p.shape[0]))
rh_target_p, rh_target_v, rh_target_para = gecko.steady('rh', int(rh_target_p.shape[0]))

target_p3 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v3 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))
target_para3 = np.hstack((rf_target_para, rh_target_para, lf_target_para, lh_target_para))

# moving 1
rf_target_p, rf_target_v, rf_target_para = gecko.moving('rf', moving_time, time_period, np.array([gecko.L1, gecko.present_position['rf'][1],
                                                                 gecko.present_position['rf'][2]]), para=0.5)
rh_target_p, rh_target_v, rh_target_para = gecko.moving('rh', moving_time, time_period, np.array([gecko.L1, gecko.present_position['rh'][1],
                                                                 gecko.present_position['rh'][2]]), para=0.5)
lf_target_p, lf_target_v, lf_target_para = gecko.moving('lf', moving_time, time_period, np.array([gecko.L1, gecko.present_position['lf'][1],
                                                                 gecko.present_position['lf'][2]]), para=0.5)
lh_target_p, lh_target_v, lh_target_para = gecko.moving('lh', moving_time, time_period, np.array([gecko.L1, gecko.present_position['lh'][1],
                                                                 gecko.present_position['lh'][2]]), para=0.5)

target_p_m1 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v_m1 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))
target_para_m1 = np.hstack((rf_target_para, rh_target_para, lf_target_para, lh_target_para))

target_p = np.vstack((target_p0, target_p2, target_p1, target_p3, target_p_m1))
target_v = np.vstack((target_v0, target_v2, target_v1, target_v3, target_v_m1))
target_para = np.vstack((target_para0, target_para2, target_para1, target_para3, target_para_m1))

np.savetxt('target_p.csv', target_p, delimiter=',')
np.savetxt('target_v.csv', target_v, delimiter=',')
np.savetxt('target_para.csv', target_para, delimiter=',')

