% This function approximates numerically the integral of e^xtanh(4cos(20x))
% in [-1,1] using the quadrature formula. It takes an integer n to decide how many
% nodes in [-1,1] to use and its corresponding weights. 
function i = hyperbolicintegral(n)
i = 0;
fx = @(x) exp(x)*tanh(4*cos(20*x)); 
% Anonymous function that this function is integrating over
[x,w] = guassq(n);
% Uses the guassq function to generate the corresponding nodes and weights
% in a nx2 matrix that is required to approximate the integral
for j = 1:n
    i = i + w(j)*fx(x(j)); 
    % Formula for quadrature formula
    % w(j) is the weight and x(j) is the node
end
end

