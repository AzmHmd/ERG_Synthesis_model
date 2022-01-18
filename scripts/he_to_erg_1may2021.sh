#python train.py --name he_erg_1may21 --dataroot './dataset/fold2/' --no_instance --load_pretrain './checkpoints/???'
#cohrt 1
#for case in 'JS51.ndpi' 'JS95.ndpi' 'JS117.ndpi' 'JS127A2.ndpi' 'JS127A11.ndpi' 'JS133.ndpi' 'JS135.ndpi' 'JS159.ndpi' 'JS172.ndpi' 'JS475.ndpi' '1/JS1521.ndpi'
#do
#	echo $case
#	python test.py --name he_erg_1may21 --dataroot './dataset/cohort3/he_erg_1/'$case'/' --results_dir './results/results3_1may2021/he_erg_1/'$case --no_instance 
#done

#cohort 2
#for case in 'JS72.ndpi' 'JS89.ndpi' 'JS120.ndpi' 'JS146.ndpi' 'JS247.ndpi' 'JS314.ndpi' 'JS332.ndpi' 'JS384.ndpi' 'JS426.ndpi' 'JS445.ndpi'
#do
#	echo $case
#	python test.py --name he_erg_1may21 --dataroot './dataset/cohort3/he_erg_2/'$case'/' --results_dir './results/results3_1may2021/he_erg_2/'$case --no_instance 
#done

#for case in '2212_RMS.czi' '  '2404_RMS.czi' '  '2546_RMS.czi' '  '2831_RMS.czi' '  '2882_RMS.czi' ' '2216_RMS.czi' '  '2405_RMS.czi' '  '2549_RMS.czi' '  '2832_RMS.czi' '  '2883_RMS.czi' ' '2218_RMS.czi' '  '2406_RMS.czi' '  '2778_RMS.czi' '  '2833_RMS.czi' '  '2884_RMS.czi' ' '2219_RMS.czi' '  '2407_RMS.czi' '  '2780_RMS.czi' '  '2834_RMS.czi' '  '2885_RMS.czi' ' '2222_RMS.czi' '  '2408_RMS.czi' '  '2783_RMS.czi' '  '2835_RMS.czi' '  '2888_RMS.czi' ' '2228_RMS.czi' '  '2409_RMS.czi' '  '2787_RMS.czi' '  '2836_RMS.czi' '  '2889_RMS.czi' ' '2230_RMS.czi' '  '2411_RMS.czi' '  '2788_RMS.czi' '  '2838_RMS.czi' '  '2890_RMS.czi' ' '2233_RMS.czi' '  '2503_RMS.czi' '  '2789_RMS.czi' '  '2839_RMS.czi' '  '2891_RMS.czi' ' '2238_RMS.czi' '  '2504_RMS.czi' '  '2790_RMS.czi' '  '2840_RMS.czi' '  '2892_RMS.czi' ' '2243_RMS.czi' '  '2505_RMS.czi' '  '2792_RMS.czi' '  '2841_RMS.czi' '  '3470_RMS.czi' ' '2244_RMS.czi' '  '2506_RMS.czi' '  '2793_RMS.czi' '  '2843_RMS.czi' '  '3471_RMS.czi' ' '2245_RMS.czi' '  '2508_RMS.czi' '  '2794_RMS.czi' '  '2844_RMS.czi' '  '3473_RMS.czi' ' '2246_RMS.czi' '  '2511_RMS.czi' '  '2795_RMS.czi' '  '2845_RMS.czi' '  '3475_RMS.czi' ' '2247_RMS.czi' '  '2512_RMS.czi' '  '2796_RMS.czi' '  '2846_RMS.czi' '  '3476_RMS.czi' ' '2248_RMS.czi' '  '2513_RMS.czi' '  '2797_RMS.czi' '  '2848_RMS.czi' '  '3478_RMS.czi' ' '2250_RMS.czi' '  '2514_RMS.czi' '  '2798_RMS.czi' '  '2851_RMS.czi' '  '3491_RMS.czi' ' '2251_RMS.czi' '  '2515_RMS.czi' '  '2799_RMS.czi' '  '2854_RMS.czi' '  '3495_RMS.czi' ' '2252_RMS.czi' '  '2516_RMS.czi' '  '2800_RMS.czi' '  '2857_RMS.czi' '  '3496_RMS.czi' ' '2253_RMS.czi' '  '2517_RMS.czi' '  '2802_RMS.czi' '  '2858_RMS.czi' '  '3497_RMS.czi' ' '2254_RMS.czi' '  '2518_RMS.czi' '  '2803_RMS.czi' '  '2859_RMS.czi' '  '3498_RMS.czi' ' '2255_RMS.czi' '  '2519_RMS.czi' '  '2804_RMS.czi' '  '2860_RMS.czi' '  '3500_RMS.czi' ' '2256_RMS.czi' '  '2520_RMS.czi' '  '2808_RMS.czi' '  '2861_RMS.czi' '  '3501_RMS.czi' ' '2387_RMS.czi' '  '2521_RMS.czi' '  '2809_RMS.czi' '  '2862_RMS.czi' '  '3503_RMS.czi' ' '2388_RMS.czi' '  '2522_RMS.czi' '  '2810_RMS.czi' '  '2864_RMS.czi' '  '3505_RMS.czi' ' '2389_RMS.czi' '  '2523_RMS.czi' '  '2811_RMS.czi' '  '2865_RMS.czi' '  '3508_RMS.czi' ' '2390_RMS.czi' '  '2524_RMS.czi' '  '2812_RMS.czi' '  '2867_RMS.czi' '  '3509_RMS.czi' ' '2392_RMS.czi' '  '2525_RMS.czi' '  '2815_RMS.czi' '  '2868_RMS.czi' '  '3510_RMS.czi' ' '2394_RMS.czi' '  '2527_RMS.czi' '  '2817_RMS.czi' '  '2870_RMS.czi' '  '3514_RMS.czi' ' '2395_RMS.czi' '  '2530_RMS.czi' '  '2818_RMS.czi' '  '2871_RMS.czi' '  '3518_RMS.czi' ' '2396_RMS.czi' '  '2532_RMS.czi' '  '2820_RMS.czi' '  '2873_RMS.czi' '  '3521_RMS.czi' ' '2397_RMS.czi' '  '2533_RMS.czi' '  '2821_RMS.czi' '  '2874_RMS.czi' '  '3523_RMS.czi' ' '2398_RMS.czi' '  '2534_RMS.czi' '  '2822_RMS.czi' '  '2875_RMS.czi' '  '3524_RMS.czi' ' '2399_RMS.czi' '  '2535_RMS.czi' '  '2826_RMS.czi' '  '2876_RMS.czi' '  '3525_RMS.czi' ' '2400_RMS.czi' '  '2536_RMS.czi' '  '2827_RMS.czi' '  '2877_RMS.czi' '  '2881_RMS.czi' ' '2401_RMS.czi' '  '2537_RMS.czi' '  '2828_RMS.czi' '  '2878_RMS.czi' '  '2830_RMS.czi' ' '2402_RMS.czi' '  '2541_RMS.czi' '  '2829_RMS.czi' '  '2880_RMS.czi' '  '2542_RMS.czi' ' '2403_RMS.czi' '      
#do
#	echo $case
#	python test.py --name he_erg_1may21 --dataroot './dataset/cohort3/original_he/'$case'/' --results_dir './results/results3_1may2021/original_he/'$case --no_instance 
#done

#cohort 2
for case in '2238_RMS.czi' '2243_RMS.czi' '2255_RMS.czi' '2392_RMS.czi' '2395_RMS.czi' '2404_RMS.czi' '2406_RMS.czi' '2503_RMS.czi' '2504_RMS.czi' '2505_RMS.czi' '2520_RMS.czi' '2532_RMS.czi' '2546_RMS.czi' '2783_RMS.czi' '2790_RMS.czi' '2795_RMS.czi' '2797_RMS.czi' '2799_RMS.czi' '2802_RMS.czi' '2815_RMS.czi' '2822_RMS.czi' '2831_RMS.czi' '2836_RMS.czi' '2839_RMS.czi' '2840_RMS.czi' '2846_RMS.czi' '2848_RMS.czi' '2865_RMS.czi' '2873_RMS.czi' '2888_RMS.czi' '2889_RMS.czi' '2892_RMS.czi' '3476_RMS.czi' '3501_RMS.czi' '3510_RMS.czi' '3521_RMS.czi'
do
	echo $case
	python test.py --name he_erg_1may21 --dataroot './dataset/cohort3/original_he_2/'$case'/' --results_dir './results/results3_1may2021/original_he/'$case --no_instance 
done