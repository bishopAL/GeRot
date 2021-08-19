#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 12:03:22 2019

@author: bianqingyao
"""
import numpy as np
import time
import cv2
import math
from scipy import ndimage

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

ufl_list = []
ufr_list = []

while 1:
    t1 = time.time()
    flag = flag +1
    ret,img = cap.read()
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    cv2.imshow('f',img)
    f1 = img[:,:640]
    f1 = cv2.resize(f1,(320,180),interpolation=cv2.INTER_LINEAR)
    f2 = img[:,640:]
    f2 = cv2.resize(f2,(320,180),interpolation=cv2.INTER_LINEAR)
    cv2.imshow('f1',f1)
    cv2.imshow('f2',f2)

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
        t2 = time.time()
        print(ufl, ufr, t2-t1)
    if cv2.waitKey(10) & 0xff == 27:
       break
cv2.destroyAllWindows()
cap.release()