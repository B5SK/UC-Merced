syms y
g(y) = atan(y);

syms x
f(x) = exp(-x^2) * g(x);

fp(x) = diff(f);

x0 = 0;

Estimate(f, fp, x0);