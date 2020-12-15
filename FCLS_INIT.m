function [InitA,InitB,InitC] = FCLS_INIT(tensorData,EndNum,rankNumber)
tensor_vect = tens2mat(tensorData,3);
endmember_init = rand(size(tensorData,3),EndNum);
abundance_init = FCLSU(tensor_vect,endmember_init);
E_r = zeros(size(tensorData,1),size(tensorData,2),EndNum);
A_r = zeros(size(tensorData,1),rankNumber*EndNum);
B_rT = zeros(rankNumber*EndNum,size(tensorData,2));
for r=1:EndNum
    E_r(:,:,r) = reshape(abundance_init(:,r),[size(tensorData,1),size(tensorData,2)]);
    [U1,S1,V1] = svds(double(E_r(:,:,r)),rankNumber);
%     Low_rank_matrix = (U1*S1*V1');
    A_r(:,(r-1)*rankNumber+1:r*rankNumber) = U1;
    B_rT((r-1)*rankNumber+1:r*rankNumber,:) = V1';
%     [A_r(:,(r-1)*rankNumber+1:r*rankNumber) B_rT((r-1)*rankNumber+1:r*rankNumber,:)] = nnmf(E_r(:,:,r),rankNumber);
end

InitA = max(A_r,1e-4);
InitB = max(B_rT',1e-4);
InitC = max(endmember_init,1e-4);

end