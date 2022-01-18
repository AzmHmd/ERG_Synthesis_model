for case in '6_HE.ndpi' '50922_HE.ndpi' '50976_HE.ndpi' '51464_HE.ndpi' '51560_HE.ndpi' '51746_HE.ndpi' '51884_HE.ndpi' '52429_HE.ndpi' '80213_HE.ndpi' '81642_HE.ndpi' '82110_HE.ndpi'
do
	echo $case
	python test.py --name he_erg_1may21 --dataroot './dataset/Hanyun/'$case'/' --results_dir './results/Hanyun/'$case --no_instance 
done

