x = 1:0.2:2;
y = [1.0139, 0.7959, 0.6249, 0.4906, 0.3851, 0.3023];

#(b)
#(semilogx)
semilogx(x,y);
xlim([1, 2]);

set(gca, 'fontsize', 16);

xlabel('x');
ylabel('y');

title('semilogx(x, y)');


set(gca, 'fontsize', 8);
set(gca, 'xtick', 1:0.1:2);
