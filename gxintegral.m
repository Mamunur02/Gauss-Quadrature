% This function numerically approximates g(x) over [-1,1] using n nodes and
% weights. 
function i = gxintegral(n)
i = 0;
fx = @(x) tanh(20*(x+0.5));
[x,w] = guassq(n);
for j = 1:n
    i = i + w(j)*fx(x(j));
end
end