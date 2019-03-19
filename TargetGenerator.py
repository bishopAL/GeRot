from sympy import symbols, diff, asin, atan2
import numpy as np

# Parameter of detach array
t = symbols('t', real=True)
L1 = 70
L2 = 50
L3 = 10
DATA_NUM = 100
TIME_PERIOD = np.array([0.0, 2.0])
TIME_SERIAL = np.linspace(TIME_PERIOD[0], TIME_PERIOD[1], DATA_NUM+1)
px = L1
py = L2 - 10 + 10 * t
pz = -L3 - 10 * t**2 + 40 * t
p_array = []
v_array = []

# Calculate detach array
for i in TIME_SERIAL:
    p_alpha = asin(-L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
    v_alpha = diff(p_alpha, t)
    p_beta = asin((L1 ** 2 + L2 ** 2 + L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * L1 * L2))
    v_beta = diff(p_beta, t)
    p_gamma = asin((px ** 2 + py ** 2 + pz ** 2 + L1 ** 2 - L2 ** 2 - L3 ** 2) / (
                2 * L1 * (px ** 2 + py ** 2 + pz ** 2 - L3 ** 2) ** 0.5)) - atan2((px ** 2 + pz ** 2 - L3 ** 2) ** 0.5,
                                                                                  py)
    v_gamma = diff(p_gamma, t)
    p_array.append([float(p_alpha.subs(t, i)), float(p_beta.subs(t, i)), float(p_gamma.subs(t, i))])
    v_array.append([float(v_alpha.subs(t, i)), float(v_beta.subs(t, i)), float(v_gamma.subs(t, i))])

p_array = np.array(p_array)
v_array = np.array(v_array)
detach_array = np.hstack((p_array, v_array))
# detach_array[0, 0] = 0
# detach_array[0, 1] = detach_array[1, 1]

# Parameter of attach array0
DATA_NUM = 50
TIME_PERIOD = np.array([2.0, 3.0])
TIME_SERIAL = np.linspace(TIME_PERIOD[0], TIME_PERIOD[1], DATA_NUM+1)
px = L1
py = L2 + 10
pz = -L3 + 40 - 45 * (t-2)
p_array = []
v_array = []

# Calculate attach array0
for i in TIME_SERIAL:
    p_alpha = asin(-L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
    v_alpha = diff(p_alpha, t)
    p_beta = asin((L1 ** 2 + L2 ** 2 + L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * L1 * L2))
    v_beta = diff(p_beta, t)
    p_gamma = asin((px ** 2 + py ** 2 + pz ** 2 + L1 ** 2 - L2 ** 2 - L3 ** 2) / (
                2 * L1 * (px ** 2 + py ** 2 + pz ** 2 - L3 ** 2) ** 0.5)) - atan2((px ** 2 + pz ** 2 - L3 ** 2) ** 0.5,
                                                                                  py)
    v_gamma = diff(p_gamma, t)
    p_array.append([float(p_alpha.subs(t, i)), float(p_beta.subs(t, i)), float(p_gamma.subs(t, i))])
    v_array.append([float(v_alpha.subs(t, i)), float(v_beta.subs(t, i)), float(v_gamma.subs(t, i))])

p_array = np.array(p_array)
v_array = np.array(v_array)
attach_array0 = np.hstack((p_array, v_array))

# Parameter of attach array1
DATA_NUM = 5
TIME_PERIOD = np.array([3.0, 3.1])
TIME_SERIAL = np.linspace(TIME_PERIOD[0], TIME_PERIOD[1], DATA_NUM+1)
px = L1
py = L2 + 10
pz = -L3 - 5 + 50 * (t-3)
p_array = []
v_array = []

# Calculate attach array0
for i in TIME_SERIAL:
    p_alpha = asin(-L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
    v_alpha = diff(p_alpha, t)
    p_beta = asin((L1 ** 2 + L2 ** 2 + L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * L1 * L2))
    v_beta = diff(p_beta, t)
    p_gamma = asin((px ** 2 + py ** 2 + pz ** 2 + L1 ** 2 - L2 ** 2 - L3 ** 2) / (
                2 * L1 * (px ** 2 + py ** 2 + pz ** 2 - L3 ** 2) ** 0.5)) - atan2((px ** 2 + pz ** 2 - L3 ** 2) ** 0.5,
                                                                                  py)
    v_gamma = diff(p_gamma, t)
    p_array.append([float(p_alpha.subs(t, i)), float(p_beta.subs(t, i)), float(p_gamma.subs(t, i))])
    v_array.append([float(v_alpha.subs(t, i)), float(v_beta.subs(t, i)), float(v_gamma.subs(t, i))])

p_array = np.array(p_array)
v_array = np.array(v_array)
attach_array1 = np.hstack((p_array, v_array))
print ('ok')
