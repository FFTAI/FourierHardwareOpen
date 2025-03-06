import fourier_hardware_py
import numpy as np
point_a = [0,1,2]
point_b = [0.11,1,2]
a = fourier_hardware_py.bridgeTrajectoryWithPF(point_a,point_b,1,100)
print(len(a[1]))
print(a)