for case in 'JS72.ndpi' 'JS89.ndpi' 'JS120.ndpi' 'JS146.ndpi' 'JS247.ndpi' 'JS314.ndpi' 'JS332.ndpi' 'JS384.ndpi' 'JS426.ndpi' 'JS445.ndpi'
do
	echo $case
	python test.py --name he_erg_1024p_1feb21 --dataroot './dataset/rms_erg_2021_2/'$case'/' --results_dir './results/'$case --no_instance 
done
