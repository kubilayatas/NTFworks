function [InitA,InitB,InitC] = VCA_FCLS_INIT(tensorData,EndNum,rankNumber)
tensor_vect = tens2mat(tensorData,3);
[InitC,indicies,snrEstimate ] = hyperVca(tensor_vect,EndNum);
InitC = max(InitC,1e-4);
Abun = FCLSU(tensor_vect,InitC);
E_r = zeros(size(tensorData,1),size(tensorData,2),EndNum);
A_r = zeros(size(tensorData,1),rankNumber*EndNum);
B_rT = zeros(rankNumber*EndNum,size(tensorData,2));
for r=1:EndNum
    E_r(:,:,r) = reshape(Abun(:,r),[size(tensorData,1),size(tensorData,2)]);
    [U1,S1,V1] = svds(double(E_r(:,:,r)),rankNumber);
%     Low_rank_matrix = (U1*S1*V1');
    A_r(:,(r-1)*rankNumber+1:r*rankNumber) = U1;
    B_rT((r-1)*rankNumber+1:r*rankNumber,:) = V1';
%     [A_r(:,(r-1)*rankNumber+1:r*rankNumber) B_rT((r-1)*rankNumber+1:r*rankNumber,:)] = nnmf(E_r(:,:,r),rankNumber);
end

InitA = max(A_r,1e-4);
InitB = max(B_rT',1e-4);
InitC = max(InitC,1e-4);

end