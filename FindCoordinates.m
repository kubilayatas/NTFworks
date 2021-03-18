function [coordinates] = FindCoordinates(maxs,CoreSize,PixPoint)
%[p,q] komşuluk pencere boyutu
%[m,n] işlem yapılan piksel
%maxs = size(LidarData);

% sol  üst köşe koordinatı (m-((p-1)/2),n-((q-1)/2))
% sağ üst köşe koordinatı (m-((p-1)/2),n+((q-1)/2))
% sol   alt köşe koordinatı (m+((p-1)/2),n-((q-1)/2))
% sağ  alt köşe koordinatı (m+((p-1)/2),n+((q-1)/2))
p = CoreSize(1);
q = CoreSize(2);
m = PixPoint(1);
n = PixPoint(2);
mins = [1 1];
coordinates={};
for i = [(m-((p-1)/2)):(m+((p-1)/2))];
for j = [(n-((q-1)/2)):(n+((q-1)/2))];

if i>=mins(1) && i<=maxs(1)
if j>=mins(2) && j<=maxs(2)
coordinates{end+1} = [i j];
end
end

end
end
