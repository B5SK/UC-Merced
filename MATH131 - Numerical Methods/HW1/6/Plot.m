Array = Error(10);
#10 for the Terms

x = 1:1:10;

subplot(2,2,1);
plot(x, Array);

xlabel('x');
ylabel('y');

title('plot(x, y)');

subplot(2,2,2);
semilogx(x, Array);

xlabel('x');
ylabel('y');

title('semilogx(x, y)');

#The plot that will give the linear error decay is semilogy

#points
n = [5:8];
m = [Array(5),Array(6),Array(7),Array(8)];

subplot(2,2,3);
semilogy(x, Array);

xlabel('x');
ylabel('y');

title('semilogy(x, y)');


p = polyfit(n, m, 1);

m1 = polyval(p, n);

m1 = 10.^m1;

hold on;
plot(n, m1);

legend("semilogy(x,y)","Error", "location", "southwest");

subplot(2,2,4);
loglog(x, Array);

xlabel('x');
ylabel('y');

title('loglog(x, y)');
