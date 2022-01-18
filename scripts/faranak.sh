for case in 'DCIS-156R_C6_HE_1568653.svs' 'DFCI-002_3_1_1565522.svs'
do
	echo $case
	python test.py --name he_erg_1024p_1feb21 --dataroot './dataset/faranak_8sep21/new/'$case'/' --results_dir './results/faranak_8sep21/'$case --no_instance 
done
