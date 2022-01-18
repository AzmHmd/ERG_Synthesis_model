for case in '2020-01-15XX19_17_01_ndpi' '2020-01-15XX19_20_01_ndpi' '2020-01-15XX20_06_12_ndpi' '2020-01-16XX00_27_37_ndpi' '2020-01-16XX00_46_27_ndpi' '2020-01-16XX01_17_59_ndpi' '2020-01-16XX01_50_10_ndpi' '2020-01-16XX02_25_35_ndpi' '2020-01-16XX03_56_04_ndpi' '2020-01-16XX04_02_35_ndpi' '2020-01-16XX04_29_58_ndpi' '2020-01-16XX04_50_32_ndpi' '2020-01-16XX05_35_55_ndpi' '2020-01-16XX08_15_55_ndpi' '2020-01-16XX08_38_59_ndpi' '2020-01-16XX08_42_39_ndpi' '2020-01-16XX08_57_23_ndpi' '2020-01-16XX10_21_31_ndpi' '2020-01-16XX11_28_09_ndpi' '2020-01-16XX12_05_44_ndpi' 
do
	echo $case
	python test.py --name he_erg_1may21 --dataroot './dataset/SIMON/x/'$case'/' --results_dir './results/SIMON/'$case --no_instance 
done

