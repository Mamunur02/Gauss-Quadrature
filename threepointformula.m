% This function approximates the integral x^k from [-1,1] numerically using
% a quadrature formula. It takes an integer as its argument to decide what
% the function that we are integrating over is.
function in = threepointformula(n)
in = 0; % Initialises value of the integral
for i = 1:3 % For loop to go through each of the nodes
    if i == 1 % To check which node and weight to use
        in = in + (5/9)*(-(3/5)^0.5)^n; % Updates the integral
    elseif i == 2
        in = in + (8/9)*((0)^0.5)^n;
    else
        in = in + (5/9)*((3/5)^0.5)^n;
    end
end
end

