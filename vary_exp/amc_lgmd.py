import numpy as np
import time
import cv2
import math
from scipy import ndimage
from dynamixel.mt_dxl import DxlAPI
import matplotlib.pyplot as plt

def LgmdCal(src0,src1,src2):
    Ts = 50
#    wI = np.array([[0.125, 0.25, 0.125], [0.25, 0, 0.25], [0.125, 0.25, 0.125]])
    wI_ = np.array([[0.06, 0.12, 0.25, 0.12, 0.06], [0.12, 0.06, 0.12, 0.06, 0.12], [0.25, 0.12, 0, 0.12, 0.25], [0.12, 0.06, 0.12, 0.06, 0.12], [0.06, 0.12, 0.25, 0.12, 0.06]])
    W_I = 0.6

    pf = src2 - src1
    pf_ = src1 - src0
    If = np.zeros([src1.shape[0], src1.shape[1]], dtype=np.int16)

    If = ndimage.convolve(pf_, wI_, mode='constant', cval=0.0)

    ef = np.abs(pf)
    te = (W_I * (np.abs(If))).astype(np.int16)
    sf = cv2.subtract(ef, te)

    ret, sf = cv2.threshold(sf, Ts, 255, cv2.THRESH_TOZERO)

    Uf = np.sum(np.reshape(sf,(sf.size,)))
    uf = (1 + math.e ** -( float(Uf) / src0.shape[0] / src0.shape[1])) ** -1
    return uf

cap = cv2.VideoCapture(0)
flag =0

limit = 0.75

ufl_list = []
ufr_list = []

target_p = np.loadtxt("target_p.csv", delimiter=",")
target_v = np.loadtxt("target_v.csv", delimiter=",")
target_para = np.loadtxt("target_para.csv", delimiter=",")
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

target_p0 = target_p
target_v0 = target_v

target_p_left = np.loadtxt("target_p_left.csv", delimiter=",")
target_v_left = np.loadtxt("target_v_left.csv", delimiter=",")
target_para_left = np.loadtxt("target_para_left.csv", delimiter=",")
target_p_left[:, 3:9] = -target_p_left[:, 3:9]
target_v_left[:, 3:9] = -target_v_left[:, 3:9]
target_p_left[:, 4] = -target_p_left[:, 4]
target_v_left[:, 4] = -target_v_left[:, 4]
target_p_left[:, 10] = -target_p_left[:, 10]
target_v_left[:, 10] = -target_v_left[:, 10]
target_p_left[:, 5] = -target_p_left[:, 5]
target_v_left[:, 5] = -target_v_left[:, 5]
target_p_left[:, 11] = -target_p_left[:, 11]
target_v_left[:, 11] = -target_v_left[:, 11]

target_p_right = np.loadtxt("target_p_right.csv", delimiter=",")
target_v_right = np.loadtxt("target_v_right.csv", delimiter=",")
target_para_right = np.loadtxt("target_para_right.csv", delimiter=",")
target_p_right[:, 3:9] = -target_p_right[:, 3:9]
target_v_right[:, 3:9] = -target_v_right[:, 3:9]
target_p_right[:, 4] = -target_p_right[:, 4]
target_v_right[:, 4] = -target_v_right[:, 4]
target_p_right[:, 10] = -target_p_right[:, 10]
target_v_right[:, 10] = -target_v_right[:, 10]
target_p_right[:, 5] = -target_p_right[:, 5]
target_v_right[:, 5] = -target_v_right[:, 5]
target_p_right[:, 11] = -target_p_right[:, 11]
target_v_right[:, 11] = -target_v_right[:, 11]

motor_group = DxlAPI(range(12), '/dev/ttyUSB0')
# position initialize
motor_group.set_operating_mode('p')
motor_group.torque_enable()
motor_group.set_position(target_p[0])
time.sleep(6)
motor_group.torque_disable()
motor_group.set_operating_mode('t')
motor_group.torque_enable()
breaking_flag = 0
p_rec = []
v_rec = []
t_rec = []
calc_torque_rec = []
beta = np.array([[0.02], [0.01], [0.01], [0.02], [0.01], [0.01], [0.02], [0.01], [0.01], [0.02], [0.01], [0.01]])
# a = np.array([[2.0, 1.5, 7.0, 2.0, 1.5, 7.0, 2.0, 1.5, 7.0, 2.0, 1.5, 7.0]]) # cannot detach
a = np.array([[1.6, 1.5, 4.0, 1.6, 1.5, 4.0, 1.6, 1.5, 4.0, 1.6, 1.5, 4.0]])
b = np.array([[0.7, 0.8, 2.0, 0.7, 0.8, 2.0, 0.7, 0.8, 2.0, 0.7, 0.8, 2.0]])
TA = time.time()

for j in range(15):
    for i in range(target_p0.shape[0]):
        t0 = time.time()
        v_t = target_v0[i]
        p_t = target_p0[i]
        t_p = motor_group.get_torque()
        v_p = motor_group.get_velocity()  # 1xn
        p_p = motor_group.get_position()  # 1xn
        v_e = np.array([v_p - v_t]).T  # velocity error nx1
        p_e = np.array([p_p - p_t]).T  # position error nx1
        tra_diff = p_e + beta * v_e  # track difference error(t) nx1
        co_diff = a / (1 + b * np.linalg.norm(tra_diff) ** 2)  # gamma(t) 1xn
        ff = tra_diff / co_diff.T  # force F(t) nx1
        # p_gain = np.dot(ff, p_e.T)  # nxn
        # d_gain = np.dot(ff, v_e.T)  # nxn
        # p_gain = ff * p_e  # nx1
        # d_gain = ff * v_e  # nx1
        p_gain = np.array([[0.010, 0.02, 0.01, 0.010, 0.02, 0.01, 0.010, 0.02, 0.01, 0.010, 0.02, 0.01]]).T
        d_gain = np.array([[0.010, 0.02, 0.01, 0.010, 0.02, 0.01, 0.010, 0.02, 0.01, 0.010, 0.02, 0.01]]).T
        # calc_torque = (-ff - np.dot(p_gain, p_e) - np.dot(d_gain, v_e)).T[0]  # (nx1).T[0]
        calc_torque = (-ff*target_para[i] - p_gain * p_e - d_gain * v_e).T[0]
        # for t in calc_torque.tolist():
        #     if t > 5 or t < -5:
        #         motor_group.torque_disable()
        #         motor_group.portHandler.closePort()
        #         breaking_flag = 1
        # if breaking_flag == 1:
        #     break
        motor_group.set_torque(calc_torque.tolist())
        v_rec.append(v_p)
        p_rec.append(p_p)
        t_rec.append(t_p)
        calc_torque_rec.append(calc_torque)
        t1 = time.time()
        if (0.01-(t1-t0)) > 0:
            time.sleep(0.01-(t1-t0))
        #print("Total time: %d, time for one period: %f" % (j, t1-t0))

    time_img0 = time.time()
    flag = flag +1
    ret,img = cap.read()
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    f1 = img[:,:640]
    f1 = cv2.resize(f1,(320,180),interpolation=cv2.INTER_LINEAR)
    f2 = img[:,640:]
    f2 = cv2.resize(f2,(320,180),interpolation=cv2.INTER_LINEAR)

    if flag == 1:
        src00 = f1
        src10 = f2

    elif flag == 2:
        src01 = f1
        src11 = f2

    elif flag == 3:
        src02 = f1
        src12 = f2

    else:
        src00 = src01.astype(np.int16)
        src10 = src11.astype(np.int16)

        src01 = src02.astype(np.int16)
        src11 = src12.astype(np.int16)

        src02 = f1.astype(np.int16)
        src12 = f2.astype(np.int16)


        ufr = LgmdCal(src00,src01,src02)
        ufl = LgmdCal(src10,src11,src12)
        
        if ufr >= limit or  ufl >= limit:
            if ufr >= ufl:
                print('turn left')
                target_p0 = target_p_left
                target_v0 = target_v_left
                print(ufl, ufr)
            else:
                print('turn right')
                target_p0 = target_p_right
                target_v0 = target_v_right
                print(ufl, ufr)
        else:
            print('go forward')
            target_p0 = target_p
            target_v0 = target_v
            print(ufl, ufr)
    time_img1 = time.time()
    print(time_img1 - time_img0)
    
    
cv2.destroyAllWindows()
cap.release()