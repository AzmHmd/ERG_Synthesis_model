import os 

# used for JSs
path0='/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/results/results3_1may2021/original_he'
path1 = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/cohort3/original_he'
for case in os.listdir(path0):
	x_sr = os.path.join(path0,case,'he_erg_1may21/test_latest/images')
	x_ds = os.path.join(path1,case,'test_A')

	path00, dirs00, files00 = next(os.walk(x_sr))
	file_count0 = len(files00)/2

	path11, dirs11, files11 = next(os.walk(x_ds))
	file_count1 = len(files11)

	if file_count1 != file_count0:
		print(case)


'''
p0 = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/cohort3/original_he/'
p1 = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/cohort3/original_he_2/'
import shutil
s = ['2503_RMS.czi','2795_RMS.czi','2395_RMS.czi','2836_RMS.czi','3501_RMS.czi','2888_RMS.czi','3476_RMS.czi','2848_RMS.czi','2520_RMS.czi','2238_RMS.czi','2404_RMS.czi','2889_RMS.czi','2783_RMS.czi','2790_RMS.czi','3521_RMS.czi','2392_RMS.czi','2255_RMS.czi','2815_RMS.czi','2846_RMS.czi','2839_RMS.czi','2873_RMS.czi','2504_RMS.czi','2865_RMS.czi','2797_RMS.czi','2505_RMS.czi','2892_RMS.czi','2532_RMS.czi','2840_RMS.czi','2406_RMS.czi','2243_RMS.czi','2799_RMS.czi','2802_RMS.czi','3510_RMS.czi','2831_RMS.czi','2546_RMS.czi','2822_RMS.czi']
for i in s:
	path1 = p0 + i + '/test_A'
	path2 = p1 + i + '/test_A'
	print(path1,path2)
	if not os.path.isdir(path1):
		os.mkdir(path1)
	shutil.copytree(path1,path2)
	'''