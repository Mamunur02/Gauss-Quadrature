%% Guass Quadrature

%% Exercise 1

%%
% In this exercise I have created a function that numerically approximates 
% the integral of $x^{k}$ for $x \in [-1,1]$ using a 3-point quadrature
% formula that I will denote as $I_{3}$. In this first section I will show
% that $I_{3} = I$, where $I$ is the actual integral, for $0 \leq k \leq 5$ but
% not for $k = 6$.

syms x
for i = 0:6 % For loop to go through each k
    integral = int(x^i,x,-1,1); % Actual value of the integral
    approxintegral = threepointformula(i); % Numerical approximation
    count = num2str(i); % Will be used in display
    if integral == approxintegral % Checks to see if the integrals are the same
        X = ['Exact for k = ',count]; % Disp only takes one argument
        disp(X) % Shows for what value of k this was
    else
        X = ['Not exact for k = ',count];
        disp(X)
    end
end

%%
% This showed that $I_{3} = I$ for $0 \leq k \leq 5$ but not for $k = 6$. 
% In this next section I will show the errors, $E_{n} = I_{n} - I$ for $0
% \leq k \leq 10$.

threepointerror()

%% 
% It is clear that for $k = 7,8,9,10$ that $I_{3}$ does not always equal
% $I$. However, when $k$ is odd, $I_{3} = I$. This is because $x^{k}$ is an
% even function when $k$ is even and an odd function when $k$ is odd.
% Therefore, the integral for $x \in [-1,1]$ when $x^{k}$ is odd will be 0.
% By looking at the 3-point quadrature formula we can see that $I_{3}$
% always equals $0$ when $k$ is odd. 

%% Exercise 2

%%
% In this next section I have created a function that returns an $n x 2$
% vector where the first column contains nodes and the second column
% contains the corresponding weights for an $n-point$ quadrature formula. I
% will verify that for $n = 3$ that the nodes and corresponding weights are
% the same from the previous question.

[x,w] = guassq(3);
disp(sym([x,w]))

%% 
% As we can see this function produced the same weights and nodes.

%% Exercise 3

%%
% In this next exercise I will plot $f(x)$ for $x \in [-1,1]$. I will then
% make a semilogy plot of $|E_{n}|$ against $n$ for $n =
% 50,100,150,...,950$. However, for this I will take $I_{1000}$ to be $I$.

syms x
f = exp(x)*tanh(4*cos(20*x));
figure(1)
fplot(f,[-1,1])
title('Graph Of f(x)')
xlabel('x')
ylabel('f(x)')
semilogyplot()

%%
% By looking at the semilogy plot we can see that the absolute error
% decreases exponentially against $n$ initially. It reaches it's lowest point at $n =
% 800$. However, after this point the error begins to increase slightly,
% but remains minimal.

%% Exercise 4 

%% 
% In this exercise I will plot semilogy plots and loglog plots of 
% $|E_{n}|$ against $n$ for three different functions.

%%
% The integral of $f(x)$ for $x \in [-1,1]$ is $2arctan(5)/5$.

fxplots()

%%
% In this case $n \geq 30$ gives $I_{n}$ 6 digit accuracy. The shape of
% these graphs indicate that as $n$ increases, $|E_{n}|$ decreases
% exponentially up to a point and then $|E_{n}|$ remains at a very low value.
% This shows that $I_{n} = I$ as $n \rightarrow \infty$.

%% 
% The integral of $g(x)$ for $x \in [-1,1]$ is
% $(log(cosh(30))-log(cosh(10)))/20$.

gxplots()

%%
% In this case $n \geq 60$ gives $I_{n}$ 6 digit accuracy. The shape of
% these graphs indicate that as $n$ increases, $|E_{n}|$ decreases
% exponentially up to a point and then $|E_{n}|$ remains at a very low value.
% This shows that $I_{n} = I$ as $n \rightarrow \infty$. The quadrature
% formula for this integral converged slower than the previous example.

%% 
% The integral of $h(x)$ for $x \in [-1,1]$ is $1$.

hxplots()

%%
% In this case $n \geq 500$ gives $I_{n}$ 6 digit accuracy. The shape of
% these graphs indicate that as $n$ increases, $|E_{n}|$ decreases
% linearly. An interesting thing to note is that analytically, this integral is a lot easier to
% calculate than the other two, however our formula converges at a much
% slower rate. We can determine why this is by plotting the graphs.

syms x
f = 1/(1+25*x^2);
g = tanh(20*(x+0.5));
h = abs(x);
figure(6)
fplot(f,[-1,1],'DisplayName','f(x)')
hold on
fplot(g,[-1,1],'DisplayName','g(x)')
fplot(h,[-1,1],'DisplayName','h(x)')
legend()
title('Plot Of The Three Functions')
xlabel('x')
ylabel('y')

%%
% We can see that $f(x)$ is smoothest on this interval then $g(x)$ and
% finally $h(x)$. This explains why quadrature formula converged quickest
% in that order. This is because Guassian quadrature integrates polynamials
% up to a given degree exactly, so functions that are closest to a polynomial will converge quicker.

%% Description Of Functions

%%
% This section shows the code written to create the functions that I have
% used to complete the exercises. 

type threepointformula.m
type threepointerror.m
type guassq.m
type hyperbolicintegral.m
type semilogyplot.m
type fxintegral.m
type fxplots.m
type gxintegral.m
type gxplots.m
type hxintegral.m
type hxplots.m






