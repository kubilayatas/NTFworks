clear all, close all, clc
rng(25);
load D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/sim2/sim_im.mat;
load D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/sim2/sim_abun.mat;
load D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/sim2/endm.mat;
load D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/sim2/dsm.mat;

realEndmember=endm;
%realAbundance=sim_abun;
[tensorData realAbundance] = cut_HSI_data(sim_im,sim_abun,61:124,1:64);
EndNum=5;
%rankNumber=173;
tensorData = (tensorData-min(min(min(tensorData))))/(max(max(max(tensorData)))-min(min(min(tensorData))));

options.derta=0.4;
options.convergeNum=5;
allSad=zeros(1,10);
allRmse=zeros(1,10);

lambda_vec = [0.0001 0.25 1] ;
mu_vec = [0.5 3 25];
rank_vec = [20 40 60 80 100];
try
    load D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarsýzKüçükVeri-FCLS_Init/sonuclar.mat
catch
    sonuclar = zeros(length(mu_vec)*length(lambda_vec)*length(rank_vec),5);
end
sayac = min(find(sonuclar(:,1)==0));
%sayac = 1;
[sayac_mu,sayac_lamb,sayac_rank]=update_counters(sayac,length(mu_vec),length(lambda_vec),length(rank_vec));
while(sayac<=length(sonuclar))
rankNumber = rank_vec(sayac_rank);
mu = mu_vec(sayac_mu);
lambda = lambda_vec(sayac_lamb);

%bt_A = max(rand(size(tensorData,1),EndNum*rankNumber),1e-4);
%bt_B = max(rand(size(tensorData,2),EndNum*rankNumber),1e-4);
%bt_C = max(rand(size(tensorData,3),EndNum),1e-4);
[bt_A,bt_B,bt_C]=FCLS_INIT(tensorData,EndNum,rankNumber);

tic;
[A,B,C,U,V,E]= mvntfTV(tensorData,bt_A,bt_B,bt_C,lambda,mu,EndNum,rankNumber);
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
[rmse]=HyperRmse(EEr_reshape,realAbundance,sor)

sonuclar(sayac,1)= mu;
sonuclar(sayac,2)= lambda;
sonuclar(sayac,3)= rankNumber;
sonuclar(sayac,4)= rmse;
sonuclar(sayac,5)= sure;
save('sonuclar.mat','sonuclar');
sayac = sayac + 1;
[sayac_mu,sayac_lamb,sayac_rank]=update_counters(sayac,length(mu_vec),length(lambda_vec),length(rank_vec));
end