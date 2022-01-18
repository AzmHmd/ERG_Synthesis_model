#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Feb  5 12:16:02 2021

@author: azamhamidinekoo

import os

p = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/fold1'
testB = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/fold1/test_B'
for i,j,files in os.walk(testB):
    for ii in files:
        s = os.path.join(p,'train_B',ii)
        d = os.path.join(p,'test_B',ii)
        os.system(f'cp {s} {d}')
"""        
# -------------------------------------------------------------------------------
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Feb  5 12:16:02 2021

@author: azamhamidinekoo
"""
import os
from PIL import Image
import numpy as np
import matplotlib.pyplot as plt

testA = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/fold1/test_A'
testB = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/fold1/test_B'
savepath = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results/he_erg_1024p_1feb21/test_JS133/all'
predictionpath = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results/he_erg_1024p_1feb21/test_JS133/images'
for i,j,files in os.walk(testB):
    for ii in files:
        imgA = Image.open(os.path.join(testA,ii))
        imgB = Image.open(os.path.join(testB,ii))
        iii = ii.replace('.jpg','_synthesized_image.jpg')
        imgpredict = Image.open(os.path.join(predictionpath,iii))
        
        new_width  = 2000
        new_height = 2000
        imgpredict2 = imgpredict.resize((new_width, new_height), Image.ANTIALIAS)
        
        margin = np.zeros((new_width,5,3),dtype=np.uint8)

        alltogether = np.hstack((imgA,margin,imgB,margin,imgpredict2))
        #plt.imshow(alltogether)
        #plt.show()
        plt.imsave(os.path.join(savepath,ii),alltogether)
        
# ---------------------------------------------------------------------------
import os
from glob import glob
import shutil
rootdir = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset'
for folder in glob(rootdir+"/JS*/"):
    if not os.path.isdir(folder+'/test_A'):
        os.mkdir(folder+'/test_A')
    source = folder
    dest = folder +'test_A/'
    for i in os.listdir(source):
        if i.endswith('.jpg') and i.find('Slide')==-1 and i.find('Ss1')==-1 :
            shutil.move(source + i, dest)
            
            
        