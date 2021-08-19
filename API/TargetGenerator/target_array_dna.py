from Target_Generator import TargetGene
import numpy as np

width = 20  # 30
height = 60
depth = 5
time_period = 0.01
gecko = TargetGene()

dna_time = 2
attach_time0 = 0.75
attach_time1 = 0.15
moving_time = 0.5

gecko.present_position = {'rf': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3]),
                          'rh': np.array([gecko.L1, gecko.L2 - width/2, -gecko.L3 - 8]),
                          'lf': np.array([gecko.L1, gecko.L2, -gecko.L3]),
                          'lh': np.array([gecko.L1, gecko.L2, -gecko.L3 - 8])}

# step 0
rf_target_p, rf_target_v = gecko.dna('rf', dna_time, time_period, width, height)
rh_target_p, rh_target_v = gecko.steady('rh', int(rf_target_p.shape[0]))
lf_target_p, lf_target_v = gecko.steady('lf', int(rf_target_p.shape[0]))
lh_target_p, lh_target_v = gecko.steady('lh', int(rf_target_p.shape[0]))

target_p0 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v0 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

# step 1
rh_target_p, rh_target_v = gecko.dna('rh', dna_time, time_period, width, height)
rf_target_p, rf_target_v = gecko.steady('rf', int(rh_target_p.shape[0]))
lf_target_p, lf_target_v = gecko.steady('lf', int(rh_target_p.shape[0]))
lh_target_p, lh_target_v = gecko.steady('lh', int(rh_target_p.shape[0]))

target_p2 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v2 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

# moving 0
rf_target_p, rf_target_v = gecko.moving('rf', moving_time, time_period, np.array([gecko.L1, gecko.present_position['rf'][1] - width/2,
                                                                 gecko.present_position['rf'][2]]))
rh_target_p, rh_target_v = gecko.moving('rh', moving_time, time_period, np.array([gecko.L1, gecko.present_position['rh'][1] - width/2,
                                                                 gecko.present_position['rh'][2]]))
lf_target_p, lf_target_v = gecko.moving('lf', moving_time, time_period, np.array([gecko.L1, gecko.present_position['lf'][1] - width/2,
                                                                 gecko.present_position['lf'][2]]))
lh_target_p, lh_target_v = gecko.moving('lh', moving_time, time_period, np.array([gecko.L1, gecko.present_position['lh'][1] - width/2,
                                                                 gecko.present_position['lh'][2]]))
target_p_m0 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v_m0 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

# step 2
lf_target_p, lf_target_v = gecko.dna('lf', dna_time, time_period, width, height)
rh_target_p, rh_target_v = gecko.steady('rh', int(lf_target_p.shape[0]))
rf_target_p, rf_target_v = gecko.steady('rf', int(lf_target_p.shape[0]))
lh_target_p, lh_target_v = gecko.steady('lh', int(lf_target_p.shape[0]))

target_p1 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v1 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

# step 3
lh_target_p, lh_target_v = gecko.dna('lh', dna_time, time_period, width, height)
rf_target_p, rf_target_v = gecko.steady('rf', int(lh_target_p.shape[0]))
lf_target_p, lf_target_v = gecko.steady('lf', int(lh_target_p.shape[0]))
rh_target_p, rh_target_v = gecko.steady('rh', int(lh_target_p.shape[0]))

target_p3 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v3 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

# moving 1
rf_target_p, rf_target_v = gecko.moving('rf', moving_time, time_period, np.array([gecko.L1, gecko.present_position['rf'][1] - width/2,
                                                                 gecko.present_position['rf'][2]]))
rh_target_p, rh_target_v = gecko.moving('rh', moving_time, time_period, np.array([gecko.L1, gecko.present_position['rh'][1] - width/2,
                                                                 gecko.present_position['rh'][2]]))
lf_target_p, lf_target_v = gecko.moving('lf', moving_time, time_period, np.array([gecko.L1, gecko.present_position['lf'][1] - width/2,
                                                                 gecko.present_position['lf'][2]]))
lh_target_p, lh_target_v = gecko.moving('lh', moving_time, time_period, np.array([gecko.L1, gecko.present_position['lh'][1] - width/2,
                                                                 gecko.present_position['lh'][2]]))
target_p_m1 = np.hstack((rf_target_p, rh_target_p, lf_target_p, lh_target_p))
target_v_m1 = np.hstack((rf_target_v, rh_target_v, lf_target_v, lh_target_v))

target_p = np.vstack((target_p0, target_p2, target_p_m0, target_p1, target_p3, target_p_m1))
target_v = np.vstack((target_v0, target_v2, target_v_m0, target_v1, target_v3, target_v_m1))

np.savetxt('target_p_dna.csv', target_p, delimiter=',')
np.savetxt('target_v_dna.csv', target_v, delimiter=',')

