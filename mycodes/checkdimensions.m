clear
clc

p = '/home/azamhamidinekoo/Documents/projects/AzamSamiraHDGAN/dataset/fold1/train_B/';
pp = dir([p,'*.jpg']);
for i = 1:length(pp)
    img = imread([pp(i).folder,'/',pp(i).name]);
    [m,n,c] = size(img);
    if m~=2000 || n~=2000 || c~=3
        print(pp(i).name)
    end
end