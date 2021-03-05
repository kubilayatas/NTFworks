function I = div_op(dx, dy, weights_dx, weights_dy)

if nargin > 2
    dx = dx .* conj(weights_dx);
    dy = dy .* conj(weights_dy);
end
if nargin==2
I = [dx(1, :) ; dx(2:end-1, :)-dx(1:end-2, :) ; -dx(end-1, :)];
I = I + [dy(:, 1) , dy(:, 2:end-1)-dy(:, 1:end-2) , -dy(:, end-1)];
end
if nargin==1
   I = [dx(1, :) ; dx(2:end-1, :)-dx(1:end-2, :) ; -dx(end-1, :)]; 
end

end