% This function numerically approximates g(x) over [-1,1] using n nodes and
% weights. 
function i = hxintegral(n)
i = 0;
fx = @(x) abs(x);
[x,w] = guassq(n);
for j = 1:n
    i = i + w(j)*fx(x(j));
end
end