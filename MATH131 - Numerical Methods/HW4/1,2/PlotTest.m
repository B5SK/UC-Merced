x1 = [1,2,3,4,5];
y1 = [1,2,3,4,5];

x2 = 2;
y2 = 2;

x3 = 3;
y3 = 3;

x4 = 4;
y4 = 4;

x5 = 5;
y5 = 5;

loglog(x1,y1,'-k',x2,y2,'-b',x3,y3,'-g',x4,y4,'-m',x5,y5,'-r','linewidth',2);
legend('FD','3pt CD','3pt 1SD','5pt CD','5pt 1SD');
