function [] = main(commands)
%clear all, close all, clc
rng(25);
DataRoot = commands{7};
ProgramRoot = commands{8};
fprintf(strcat(commands{5},' Programý Baþlatýlýyor...\n'))

load(strcat(DataRoot,commands{1},'/sim_im.mat'))
load(strcat(DataRoot,commands{1},'/sim_abun.mat'))
load(strcat(DataRoot,commands{1},'/endm.mat'))
load(strcat(DataRoot,commands{1},'/dsm.mat'))

realEndmember=endm;

cut=commands{2};
[tensorData,realAbundance] = cut_HSI_data(sim_im,sim_abun,cut{1},cut{2});  %49x49 61:109,1:49 %64x64 61:124,1:64 % 81x81 61:141,1:81
LidarData = dsm(cut{1},cut{2});
EndNum=5;
%rankNumber=173;
tensorData = (tensorData-min(min(min(tensorData))))/(max(max(max(tensorData)))-min(min(min(tensorData))));
LidarData = (LidarData-min(min(min(LidarData))))/(max(max(max(LidarData)))-min(min(min(LidarData))));

eval(['SlidingWindow_LidarCoeff_' commands{3} '=SlidingWindowWeights(tensorData, LidarData,commands{4});']);
% Coeff = SlidingWindowWeights(tensorData, LidarData,commands{4});
save(strcat('SlidingWindow_LidarCoeff_',commands{3},'.mat'),strcat('SlidingWindow_LidarCoeff_',commands{3}));
%load D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowKüçükVeri-RandomInit/SlidingWindow_LidarCoeff_5x5.mat

options.derta=0.4;
options.convergeNum=5;
allSad=zeros(1,10);
allRmse=zeros(1,10);

lambda_vec = [0.0001 0.25 1] ;
mu_vec = [0.5 3 25];
rank_vec = [20 40 60 80 100];
try
    load(strcat(ProgramRoot,'sonuclar_',commands{5},'.mat'));
catch
    %sonuclar = zeros(length(mu_vec)*length(lambda_vec)*length(rank_vec),5);
    eval([strcat('sonuclar_',commands{5}) '=zeros(length(mu_vec)*length(lambda_vec)*length(rank_vec),5);']);
end
%sayac = min(find(sonuclar(:,1)==0));
eval(['sayac=min(find(' strcat('sonuclar_',commands{5}) '(:,1)==0));']);
%sayac = 1;
[sayac_mu,sayac_lamb,sayac_rank]=update_counters(sayac,length(mu_vec),length(lambda_vec),length(rank_vec));
while(sayac<=length(eval(strcat('sonuclar_',commands{5}))))
rankNumber = rank_vec(sayac_rank);
mu = mu_vec(sayac_mu);
lambda = lambda_vec(sayac_lamb);

bt_A = max(rand(size(tensorData,1),EndNum*rankNumber),1e-4);
bt_B = max(rand(size(tensorData,2),EndNum*rankNumber),1e-4);
bt_C = max(rand(size(tensorData,3),EndNum),1e-4);

tic;
[A,B,C,U,V,E]= mvntfTV(tensorData,bt_A,bt_B,bt_C,lambda,mu,EndNum,rankNumber,eval(strcat('SlidingWindow_LidarCoeff_',commands{3})));
sure = toc;

L_vec=ones(1,EndNum)*rankNumber;
indU=[0 cumsum(L_vec)];
indV=[0 cumsum(L_vec)];
for r=1:EndNum
    Ar=A(:,indU(r)+1:indU(r+1));
    Br=B(:,indV(r)+1:indV(r+1));
    EE{r}=Ar*Br';
end
EEr_reshape(1,:) = reshape(EE{1},size(tensorData,1)*size(tensorData,2),1);
EEr_reshape(2,:) = reshape(EE{2},size(tensorData,1)*size(tensorData,2),1);
EEr_reshape(3,:) = reshape(EE{3},size(tensorData,1)*size(tensorData,2),1);
EEr_reshape(4,:) = reshape(EE{4},size(tensorData,1)*size(tensorData,2),1);
EEr_reshape(5,:) = reshape(EE{5},size(tensorData,1)*size(tensorData,2),1);

[sad,Distance,sor]=cosDistance(C,realEndmember);
[rmse]=HyperRmse(EEr_reshape,realAbundance,sor);

eval(strcat('sonuclar_',commands{5},'(sayac,1)= mu;'));
eval(strcat('sonuclar_',commands{5},'(sayac,2)= lambda;'));
eval(strcat('sonuclar_',commands{5},'(sayac,3)= rankNumber;'));
eval(strcat('sonuclar_',commands{5},'(sayac,4)= rmse;'));
eval(strcat('sonuclar_',commands{5},'(sayac,5)= sure;'));

% sonuclar(sayac,1)= mu;
% sonuclar(sayac,2)= lambda;
% sonuclar(sayac,3)= rankNumber;
% sonuclar(sayac,4)= rmse;
% sonuclar(sayac,5)= sure;

save(strcat('sonuclar_',commands{5},'.mat'),strcat('sonuclar_',commands{5}));
fprintf(strcat(num2str(sayac),'.Deney Tamamlandý\t RMSE= ',num2str(rmse),'\n'));
sayac = sayac + 1;
[sayac_mu,sayac_lamb,sayac_rank]=update_counters(sayac,length(mu_vec),length(lambda_vec),length(rank_vec));
end