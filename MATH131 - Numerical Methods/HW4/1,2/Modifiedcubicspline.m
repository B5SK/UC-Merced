function [a,b,c,d] = Modifiedcubicspline(x,y,interp)
  
  %interp for Interpolation points

% Math 131 - Spring, 2015
% This function computes the coefficients a, b, c, and d
% of the natural cubic spline interpolant (see Algorithm 3.4
% on p. 149 in Section 3.5). Note that this must hold: 
% x(1) < x(2) < ... < x(n+1).

n  = length(x)-1;
a  = zeros(n+1,1);

for i = 1:n+1
    a(i) = y(i);
end

% Step 1
for i = 1:n
    h(i) = x(i+1) - x(i);
end

% Step 2
for i = 2:n
    alpha(i) = 3*(a(i+1)-a(i))/h(i) - 3*(a(i) - a(i-1)/h(i-1));
end

% Step 3
l(1)  = 1;
mu(1) = 0;
z(1)  = 0;

% Step 4
for i = 2:n
    l(i) = 2*(x(i+1)-x(i-1)) - h(i-1)*mu(i-1);
    mu(i) = h(i)/l(i);
    z(i)  = (alpha(i) - h(i-1) * z(i-1)) / l(i);
end

% Step 5
l(n+1) = 0;
z(n+1) = 0;
c(n+1) = 0;

% Step 6
for i = n:-1:1
   c(i) = z(i) - mu(i)*c(i+1);
   b(i) = (a(i+1) - a(i)) /(h(i)) - h(i) * (c(i+1) + 2*(c(i)))/3 ;
   d(i) = (c(i+1) - c(i)) / (3*(h(i)));
end

% Plot graphs
figure(1)
hold on
% Plot cubic splines
for j= 1:n
   xj = x(j):interp:x(j+1);
   yj = a(j) + b(j)*(xj-x(j)) + c(j)*(xj-x(j)).^2 + d(j)*(xj-x(j)).^3;
   plot(xj, yj, 'g', 'Linewidth', 2)
end
% Plot data points
plot(x,y,'r*','Linewidth',2)
xlabel('x');
ylabel('y');


