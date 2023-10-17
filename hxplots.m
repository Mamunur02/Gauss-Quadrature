% This function plots |En| over n for g(x) on two subplots. One is a
% semilogy plot and the other is a loglog plot.
function hxplots()
trueintegral = 1;
for i = 50:50:5000    
en = abs(trueintegral - hxintegral(i));
figure(5)
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
title('Plot Of Log|E_n| Against n For h(x)')
xlabel('n')
ylabel('Log|E_n|')
subplot(1,2,2)
title('Plot Of Log|E_n| Against Log(n) For h(x)')
xlabel('Log(n)')
ylabel('Log|E_n|')
% Appropriate labels
end