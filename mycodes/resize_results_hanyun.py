from PIL import Image
import os 
import matplotlib.pyplot as plt
import shutil

path0='/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results/Hanyun/'
extention = 'he_erg_1may21/test_corrected'
cws_dir = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/Hanyun'
where_to_save = '/home/azamhamidinekoo/Dropbox (ICR)/Ovarian_Tami/results_7May2021'

for case in os.listdir(path0):
    print(case)
    x_sr = os.path.join(path0,case,'he_erg_1may21/test_latest/images')
    x_ds = os.path.join(path0,case,'he_erg_1may21/test_corrected')
    if not os.path.isdir(x_ds):
        os.mkdir(x_ds)
    for subdir, dirs, files in os.walk(x_sr):
            for f in files:
                if f.find('_synthesized_image.jpg') != -1:
                    n = f.replace('_synthesized_image','')
                    os.system('cp '+os.path.join(x_sr, f)+ ' '+os.path.join(x_ds,n))

for js in os.listdir(path0):
    if js.find('ndpi') != -1:
        path1 = os.path.join(path0,js,extention)
        for subdir, dirs, files in os.walk(path1):
            path_to_save = subdir.replace('test_corrected','test_corrected_resizes')
            print(path_to_save)
            if not os.path.isdir(path_to_save):
                os.mkdir(path_to_save)
            for f in files:
                img = Image.open(os.path.join(subdir,f))
                cws = Image.open(os.path.join(cws_dir,js,'test_A',f))
                a,b = cws.size
                new_image = img.resize((a, b))
                new_image.save(os.path.join(path_to_save,f))


for js in os.listdir(path0):
	if js.find('ndpi') != -1:
		path1 = os.path.join(path0,js,'he_erg_1may21/test_corrected')
		path2 = os.path.join(where_to_save,js)
		#if not os.path.isdir(path2):
			#os.makedirs(path2)
		shutil.copytree(path1, path2)