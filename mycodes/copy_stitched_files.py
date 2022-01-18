from PIL import Image
import os 
import matplotlib.pyplot as plt

# used for JSs
path0='/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results_stitched_2/'
path1 = '/home/azamhamidinekoo/Dropbox\ \(ICR\)/15Feb2021/stitched_rms_march21_2/'
for case in os.listdir(path0):
    print(case)
    n = case.split('.')[0]+'.png'
    x_sr = os.path.join(path0,case,n)
    os.system('cp '+ x_sr + ' '+ path1 + n)