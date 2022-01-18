for case in 'DARWIN_3_1_2017-10-28_19.58.10.ndpi' 'DARWIN_77_1_2017-10-21_06.21.50.ndpi' 'DARWIN_91_1_2017-10-22_06.24.44.ndpi'
do
	echo $case
	#python test.py --name he_erg_1may21 --dataroot './dataset/tx4Azam/x/'$case'/' --results_dir './results/xpan2/'$case --no_instance 
	python test.py --name he_erg_1024p_1feb21 --dataroot './dataset/tx4Azam/x/'$case'/' --results_dir './results/xpan2/'$case --no_instance 
done

