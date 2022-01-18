clear;
clc;

original_he_after_masked = '/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/cohort3/original_he_after_masked';;
cws = '/home/azamhamidinekoo/Documents/dataset/RMS-dataset/cws_20x_retile';
masks = '/home/azamhamidinekoo/Documents/projects/SCCNN_for_RMS_HE_ERG/TissueSegmentation/results/22072021/masks';
masks_dir = dir(masks);
%i=94 (2804); i=141 (2877)
for i = 142: length(masks_dir)
    path_to_mask = [masks_dir(i).folder,'/',masks_dir(i).name];
    masks_dir_imgs = dir(path_to_mask);
    mkdir([original_he_after_masked,'/',masks_dir(i).name])
    mkdir([original_he_after_masked,'/',masks_dir(i).name,'/test_A'])

    for j = 3:length(masks_dir_imgs)
        I = imread([masks_dir_imgs(j).folder,'/',masks_dir_imgs(j).name])./255;
        if sum(I(:))>10
            img = imread([cws,'/',masks_dir(i).name,'/',masks_dir_imgs(j).name]);
            newmask(:,:,1) = I;newmask(:,:,2) = I;newmask(:,:,3) = I;
            newmask = imresize(newmask,[size(img,1),size(img,2)]);
            output = newmask.*img;
            imwrite(output,[original_he_after_masked,'/',masks_dir(i).name,'/test_A','/',masks_dir_imgs(j).name])
            clear newmask
        end
    end
end