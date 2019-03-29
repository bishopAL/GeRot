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
motor_group.set_position(target_p[0])
time.sleep(5)
motor_group.torque_disable()
motor_group.set_operating_mode('t')
motor_group.torque_enable()

p_rec = []
beta = np.array([[0.04], [0.1], [0.04], [0.04], [0.1], [0.04], [0.04], [0.1], [0.04], [0.04], [0.1], [0.04]])
# a = np.array([[2.0, 1.5, 7.0, 2.0, 1.5, 7.0, 2.0, 1.5, 7.0, 2.0, 1.5, 7.0]]) # cannot detach
b = np.array([[1.0, 1.0, 4.0, 1.0, 1.0, 4.0, 1.0, 1.0, 4.0, 1.0, 1.0, 4.0]])

a = np.array([[1.5, 1.5, 7.0, 1.5, 1.5, 7.0, 1.5, 1.5, 7.0, 1.5, 1.5, 7.0]])

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
        p_gain = np.dot(ff, p_e.T)  # nxn
        d_gain = np.dot(ff, v_e.T)  # nxn
        calc_torque = (-ff - np.dot(p_gain, p_e) - np.dot(d_gain, v_e)).T[0]  # (nx1).T[0]
        motor_group.set_torque(calc_torque.tolist())
        t1 = time.time()
        if (0.01-(t1-t0))>0:
            time.sleep(0.01-(t1-t0))
        print("time for one period:", t1-t0)
motor_group.torque_disable()
motor_group.portHandler.closePort()
