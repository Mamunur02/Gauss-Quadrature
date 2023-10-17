% This function makes a semilogy plot of |En| against n for n = 50, 100,
% 150, ..., 950. It uses the numerically approximated integral with n =
% 1000 as a substitute for the actual value of the integral from [-1,1].
function semilogyplot
trueintegral = hyperbolicintegral(1000); % Actual value of the integral
for i = 50:50:950
en = abs(trueintegral - hyperbolicintegral(i)); 
% The error for each i 
figure(2)
semilogy(i,en,'x','Color','red') % Plots the point
hold on
end
title('Plot Of Log|E_n| Against n')
xlabel('n')
ylabel('Log|E_n|')
% Appropriate labels
end