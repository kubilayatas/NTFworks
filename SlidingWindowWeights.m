function [W] = SlidingWindowWeights(tensorData, LidarData,CoreSize)
W = zeros(size(LidarData));

SizeOfLidar = size(LidarData);
imax = SizeOfLidar(1);
jmax = SizeOfLidar(2);

for i=1:imax;
for j=1:jmax;

crdinates = FindCoordinates(size(LidarData),CoreSize,[i j]);
W(i,j) = Wget(crdinates,tensorData,LidarData,[i j]);

end
end

%LiDAR_coeff_mat = (LiDAR_coeff_mat-min(min(LiDAR_coeff_mat)))/((max(max(LiDAR_coeff_mat))-min(min(LiDAR_coeff_mat))));
W = (W-min(min(W)))/((max(max(W))-min(min(W))));

function weight = Wget(crdinates,tensorData,LidarData,Pix)
weight = 0;
crdCount = size(crdinates);
crdCount = crdCount(2);
for v = 1:crdCount;
k = crdinates{v}(1);
l = crdinates{v}(2);
weight = weight + exp(-(norm(LidarData(Pix(1),Pix(2))-LidarData(k,l))+norm(squeeze(tensorData(Pix(1),Pix(2),:))-squeeze(tensorData(k,l,:)))));
end
