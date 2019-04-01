import numpy as np
from mt_dxl import DxlAPI
import matplotlib.pyplot as plt
import time

target_p = np.loadtxt("target_p.csv", delimiter=",")
target_v = np.loadtxt("target_v.csv", delimiter=",")
target_p[:, 1:7] = -target_p[:, 1:7]
target_v[:, 1:7] = -target_v[:, 1:7]
motor_group = DxlAPI(range(12), '/dev/ttyUSB0')
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
motor_group.set_position(target_p[0])
time.sleep(3)
motor_group.torque_disable()
motor_group.set_operating_mode('t')
motor_group.torque_enable()
breaking_flag = 0
p_rec = []
v_rec = []
calc_torque_rec = []
beta = np.array([[0.06], [0.03], [0.03], [0.06], [0.03], [0.03], [0.06], [0.03], [0.03], [0.06], [0.03], [0.03]])
# a = np.array([[2.0, 1.5, 7.0, 2.0, 1.5, 7.0, 2.0, 1.5, 7.0, 2.0, 1.5, 7.0]]) # cannot detach
a = np.array([[1.5, 1.5, 7.0, 1.5, 1.5, 7.0, 1.5, 1.5, 7.0, 1.5, 1.5, 7.0]])
b = np.array([[0.9, 1.0, 4.0, 0.9, 1.0, 4.0, 0.9, 1.0, 4.0, 0.9, 1.0, 4.0]])

for j in range(3):
    for i in range(target_p.shape[0]):
        t0 = time.time()
        v_t = target_v[i]
        p_t = target_p[i]
        v_p = motor_group.get_velocity()  # 1xn
        p_p = motor_group.get_position()  # 1xn
        p_rec.append(p_p)
        v_e = np.array([v_p - v_t]).T  # velocity error nx1
        p_e = np.array([p_p - p_t]).T  # position error nx1
        tra_diff = p_e + beta * v_e  # track difference error(t) nx1
        co_diff = a / (1 + b * np.linalg.norm(tra_diff) ** 2)  # gamma(t) 1xn
        ff = tra_diff / co_diff.T  # force F(t) nx1
        # p_gain = np.dot(ff, p_e.T)  # nxn
        # d_gain = np.dot(ff, v_e.T)  # nxn
        p_gain = ff * p_e  # nx1
        d_gain = ff * v_e  # nx1
        # calc_torque = (-ff - np.dot(p_gain, p_e) - np.dot(d_gain, v_e)).T[0]  # (nx1).T[0]
        calc_torque = (-ff - p_gain * p_e - d_gain * v_e).T[0]
        for t in calc_torque.tolist():
            if t > 5 or t < -5:
                motor_group.torque_disable()
                motor_group.portHandler.closePort()
                breaking_flag = 1
        if breaking_flag == 1:
            break
        motor_group.set_torque(calc_torque.tolist())
        v_rec.append(v_p)
        p_rec.append(p_p)
        calc_torque_rec.append(calc_torque)
        t1 = time.time()
        if (0.01-(t1-t0)) > 0:
            time.sleep(0.01-(t1-t0))
        print("Total time: %d, time for one period: %f" % (j, t1-t0))
if breaking_flag == 0:
    motor_group.torque_disable()
    motor_group.portHandler.closePort()
else:
    print('torque too big!')

p_rec = np.array(p_rec)
v_rec = np.array(v_rec)
calc_torque_rec = np.array(calc_torque_rec)
plt.figure()
# plt.plot(p_rec[:, 0], label='j0')
plt.plot(p_rec[:, 1], label='j1_pre')
plt.plot(target_p[:, 1], label='j1_tar')
# plt.plot(p_rec[:, 2], label='j2')
plt.legend()
plt.show()

plt.figure()
#plt.plot(v_rec[:, 1], 'r', label='j1')
plt.plot(target_v[:, 1], 'b', label='j1')
# plt.plot(calc_torque_rec[:, 3], label='j0')
# plt.plot(calc_torque_rec[:, 4], label='j1')
# plt.plot(calc_torque_rec[:, 5], label='j2')
plt.legend()
#plt.plot(p_rec[:, 1], label='j1')
plt.show()