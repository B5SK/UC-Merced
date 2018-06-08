x = 1:0.2:2;
y = [1.0139, 0.7959, 0.6249, 0.4906, 0.3851, 0.3023];

semilogy(x,y);

set(gca, 'fontsize', 16);

xlabel('x');
ylabel('y');

title('semilogy(x, y)');