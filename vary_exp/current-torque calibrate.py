from dxl_api import DxlAPI
import math
import time
import numpy as np

motor0 = DxlAPI(13, 'COM3')
motor0.set_operating_mode('t')
motor0.torque_enable()
motor0.set_torque(-4)
time.sleep(10)
motor0.torque_disable()
motor0.portHandler.closePort()