% This function plots |En| over n for g(x) on two subplots. One is a
% semilogy plot and the other is a loglog plot.
function gxplots()
trueintegral = (log(cosh(30))-log(cosh(10)))/20; 
% Actual value of the integral
for i = 1:400    
en = abs(trueintegral - gxintegral(i));
figure(4)
subplot(1,2,1)
semilogy(i,en,'x','Color','red')
% Semilogy plot
hold on
subplot(1,2,2)
loglog(i,en,'x','Color','red')
% Loglog plot
hold on
end
subplot(1,2,1)
title('Plot Of Log|E_n| Against n For g(x)')
xlabel('n')
ylabel('Log|E_n|')
subplot(1,2,2)
title('Plot Of Log|E_n| Against Log(n) For g(x)')
xlabel('Log(n)')
ylabel('Log|E_n|')
% Appropriate labels
end