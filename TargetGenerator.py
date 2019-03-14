from sympy import *
import numpy as np

t = sympy.symbols('t', real=True)
L1 = 70
L2 = 50
L3 = 10
DATA_NUM = 100
TIME_PERIOD = np.array([0.0, 2.0])
TIME_SERIAL = np.linspace(TIME_PERIOD[0], TIME_PERIOD[1], DATA_NUM+1)
px = L1
py = L2 + 10 * t
pz = -L3 - 10 * t**2 + 40 * t
p_array = []
v_array = []

# Calculation
for i in TIME_SERIAL:
    p_alpha = asin(-L3 / (px ** 2 + pz ** 2) ** 0.5) - atan2(pz, px)
    v_alpha = diff(p_alpha, t)
    p_beta = asin((L1 ** 2 + L2 ** 2 + L3 ** 2 - px ** 2 - py ** 2 - pz ** 2) / (2 * L1 * L2))
    v_beta = diff(p_beta, t)
    p_gamma = asin((px ** 2 + py ** 2 + pz ** 2 + L1 ** 2 - L2 ** 2 - L3 ** 2) / (
                2 * L1 * (px ** 2 + py ** 2 + pz ** 2 - L3 ** 2) ** 0.5)) - atan2((px ** 2 + pz ** 2 - L3 ** 2) ** 0.5,
                                                                                  py)
    v_gamma = diff(p_gamma, t)
    p_array.append([p_alpha.subs(t, i), p_beta.subs(t, i), p_gamma.subs(t, i)])
    v_array.append([v_alpha.subs(t, i), v_beta.subs(t, i), v_gamma.subs(t, i)])

p_array = np.array(p_array)
v_array = np.array(v_array)
final_array = np.hstack((p_array, v_array))

