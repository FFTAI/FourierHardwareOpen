import fourier_hardware_py
import time
hardware = fourier_hardware_py.FourierHardware("/usr/local/config/fourier_hardware/gr2t2")
state = hardware.readRealRobotState()
print(state.q)
hardware.enableRobot()
time.sleep(0.1)
for i in range(1000):
    hardware.setControlGroupPosCmd("head",[i*0.0002,i*0.0002])
    state = hardware.readRealRobotState()
    time.sleep(0.01)
    print(state.q)
