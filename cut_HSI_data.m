function [Data,Abundance]=cut_HSI_data(data,abundanceMap,Y,X)
% data: the HSI data
% abundanceMap: abundance map matrix
% X: vector of horizontal pixel positions
% Y: vector of vertical pixel positions
% example [tensorData realAbundance] = cut_HSI_data(sim_im,sim_abun,61:124,1:64)
Data = data(Y,X,:);
Abundance = zeros(size(abundanceMap,1),size(Y,2)*size(X,2));
for r=1:size(abundanceMap,1)
    b=reshape(abundanceMap(r,:),size(data,1),size(data,2));
    b=b(Y,X);
    Abundance(r,:)=reshape(b,1,size(Y,2)*size(X,2));
end
end