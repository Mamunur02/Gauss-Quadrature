% This function numerically approximates f(x) over [-1,1] using n nodes and
% weights. 
function i = fxintegral(n)
i = 0;
fx = @(x) 1/(1+25*x.^2);
[x,w] = guassq(n);
for j = 1:n
    i = i + w(j)*fx(x(j));
end
end