import os
from glob import glob
import shutil
rootdir = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results/original_he_after_masked_12sep21'
path_to_save = '/home/azamhamidinekoo/Documents/projects/SCCNN_for_RMS_HE_ERG/SCCNN_detection/input/original_RMS_after_mask_virtualStain/'
for folder in glob(rootdir+"/*czi/"):
    source = folder+'/he_erg_1024p_1feb21/test_corrected_resizes/*'
    f = folder.split('/')
    n = f[8]
    dest = path_to_save
    print(source,dest)
    os.system('mkdir '+ dest+'/'+n)
    os.system('cp -r '+source+' '+ dest+'/'+n+'/')
    
