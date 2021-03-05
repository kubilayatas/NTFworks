clear all, close all, clc
rng(25);
% load xiong_25dB.mat;
% load syntheticDataIter1rank19.mat;
% 
% realEndmember=A;
% realAbundance=s;
% tensorData=reshape(x_n',64,64,224);
% 
% btdInit{1}=max(btdInit{1},1e-4);
% btdInit{2}=max(btdInit{2},1e-4);
% btdInit{3}=max(btdInit{3},1e-4);
% 
% EndNum=6;
% rankNumber=19;

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 2013 REAL DATA

% load houston_2013_HS.mat;
% load houston_2013_LiDAR.mat;
% 
% tensorData = double(x2013_IEEE_GRSS_DF_Contest_CASI);
% LiDAR = x2013_IEEE_GRSS_DF_Contest_LiDAR;
% 
% tensorData = (tensorData-min(min(min(tensorData))))/(max(max(max(tensorData)))-min(min(min(tensorData))));
% LiDAR = (LiDAR-min(min(LiDAR)))/((max(max(LiDAR))-min(min(LiDAR))));
% 
% bt_A = max(rand(349,1661),1e-4);
% bt_B = max(rand(906,1661),1e-4);
% bt_C = max(rand(144,11),1e-4);
% 
% EndNum=11;
% rankNumber=151;
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% SIM1 DATA

load sim1/sim_im.mat;
load sim1/sim_abun.mat;
load sim1/endm.mat;
load sim1/dsm.mat;

realEndmember=endm;
realAbundance=sim_abun;

tensorData = (sim_im-min(min(min(sim_im))))/(max(max(max(sim_im)))-min(min(min(sim_im))));
LiDAR = (dsm-min(min(dsm)))/((max(max(dsm))-min(min(dsm))));

bt_A = max(rand(100,245),1e-4);
bt_B = max(rand(100,245),1e-4);
bt_C = max(rand(224,5),1e-4);

EndNum=5;
rankNumber=49;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

options.derta=0.4;
options.convergeNum=5;
allSad=zeros(1,10);
allRmse=zeros(1,10);
lambda = 0.01;
mu = 3;

lidar_vec = LiDAR(:);
tensor_vec = reshape(tensorData,[10000,224]);
LiDAR_coeff = zeros(1,10000);
veri = 0;

for i = 1:length(lidar_vec);
    for j = 1:length(lidar_vec);
        veri = veri + exp(-(norm(lidar_vec(i)-lidar_vec(j))+norm(tensor_vec(i,:)-tensor_vec(j,:))));
    end
    
    LiDAR_coeff(i) = veri;
    veri = 0;
    i
end

LiDAR_coeff_mat = reshape(LiDAR_coeff,[100,100]);

LiDAR_coeff_mat = (LiDAR_coeff_mat-min(min(LiDAR_coeff_mat)))/((max(max(LiDAR_coeff_mat))-min(min(LiDAR_coeff_mat))));

save('Lidar_coeff.mat',LiDAR_coeff_mat);