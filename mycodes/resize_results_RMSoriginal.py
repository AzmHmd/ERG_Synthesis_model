from PIL import Image
import os 
import matplotlib.pyplot as plt
import shutil
#used for original rms:
path0='/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results/original_he_after_masked_12sep21/'
extention = 'he_erg_1024p_1feb21/test_latest/images'
cws_dir = '/home/azamhamidinekoo/Documents/dataset/RMS-dataset/cws_20x_retile'

for js in os.listdir(path0):
    if js.find('czi') != -1:
        f_pred = len(os.listdir(os.path.join(path0,js,extention)))/2
        f_real = len(os.listdir(os.path.join(cws_dir,js)))-3
        if f_pred != f_real:
            print(js)
            #shutil.rmtree(os.path.join(path0,js))

for js in os.listdir(path0):
    if js.find('czi') != -1:
        print(js)
        path1 = os.path.join(path0,js,extention)
        for subdir, dirs, files in os.walk(path1):
            path_to_save = subdir.replace('test_latest/images','test_corrected_resizes')
            if not os.path.isdir(path_to_save):
                os.mkdir(path_to_save)
            for f in files:
                if f.find('_synthesized_image')!= -1:
                    fname = f.replace('_synthesized_image','')
                    img = Image.open(os.path.join(subdir,f))
                    cws = Image.open(os.path.join(cws_dir,js,fname))
                    a,b = cws.size
                    new_image = img.resize((a, b))
                    new_image.save(os.path.join(path_to_save,fname))
