from PIL import Image
import os 
import matplotlib.pyplot as plt

# used for JSs
path0='/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results/results3_1may2021/he_erg_2'
extention = 'he_erg_1may21/test_corrected'
cws_dir = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/cohort3/he_erg_2'
test_name = 'he_erg_1may21'
ff= 'ndpi'
for case in os.listdir(path0):
    print(case)
    x_sr = os.path.join(path0,case,test_name,'test_latest/images')
    x_ds = os.path.join(path0,case,test_name,'test_corrected')
    if not os.path.isdir(x_ds):
        os.mkdir(x_ds)
    for subdir, dirs, files in os.walk(x_sr):
            for f in files:
                if f.find('_synthesized_image.jpg') != -1:
                    n = f.replace('_synthesized_image','')
                    os.system('cp '+os.path.join(x_sr, f)+ ' '+os.path.join(x_ds,n))


print('FINISHED TEST_CORRECTED)')

for js in os.listdir(path0):
	if js.find(ff) != -1:
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

'''
#used for original rms:
path0='/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results/original_rms/'
extention = 'he_erg_1024p_1feb21/test_latest/images'
cws_dir = '/home/azamhamidinekoo/Documents/dataset/RMS_HE_ERG/cws'

for js in os.listdir(path0):
    if js.find('2020_06_04') != -1:
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
                    new_image.save(os.path.join(path_to_save,fname))'''
