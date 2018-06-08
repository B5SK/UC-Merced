x = -6:0.0001:6;
y = -2:0.0001:2;

plot(x, atan(x), '-b', "linewidth", 2);
ylim([-2, 2]);

#Plot the asymptotes
hold on;
ny = -pi/2;
py = pi/2;
plot([-6, 6], [ny, ny], '--r');
plot([-6, 6], [py, py], '--r');

xlabel("x");
ylabel("y = arctan(x)");

set(gca, 'fontsize', 16);
set(gca, 'xtick', [-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6]);
set(gca, 'ytick', [-pi, -pi/2, 0, pi/2, pi]);

title("ArcTan(x)");