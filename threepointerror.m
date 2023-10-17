% This function calculates the error of our approximated integral for x^k,
% where k is an integer. It does this for k in [0,10].
function threepointerror()
syms x
for i = 0:10 % For loop to work out the error for each x^k
    integral = int(x^i,x,-1,1); % Actual value of the integral
    approxintegral = threepointformula(i); % Numerical approximation
    en = approxintegral - integral; % Calculates the error
    count = num2str(i); % Used to show for which value of k
    en2str = num2str(double(en));
    X = ['The error when k = ',count,' is ',en2str];
    disp(X)
end
end
