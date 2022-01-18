### he to erg
#python -m torch.distributed.launch train.py --name he_erg_1024p_1feb21 --dataroot './dataset/fold1/' --no_instance --label_nc 0 --fp16
#python train.py --name he_erg_1024p_1feb21_2 --dataroot './dataset/fold1/' --load_pretrain 'checkpoints/he_erg_1024p_1feb21/' --no_instance
#python train.py --name he_erg_1024p_1feb21 --dataroot './dataset/fold1/' --no_instance
python train.py --name he_erg_1024p_20apr21 --dataroot './dataset/fold2/' --no_instance --load_pretrain './checkpoints/he_erg_1024p_20apr21'
#p='/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/'
#python test.py --name he_erg_1024p_1feb21 --dataroot './dataset/JS51.ndpi/' --results_dir './results/JS51' --no_instance
#python test.py --name he_erg_1024p_1feb21 --dataroot './dataset/JS51.ndpi/' --no_instance
