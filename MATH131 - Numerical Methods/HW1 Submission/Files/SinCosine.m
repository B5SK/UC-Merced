#Meshwidth of 0.0001 for each axis
x = -4:0.0001:4;
y = -2:0.0001:2;

#plot the functions
plot(x, sin(x), '-b', "linewidth", 2);
hold on;
plot(x, cos(x), '-r', "linewidth", 2);

#Labeling using xlabel and ylabel
xlabel("x");
ylabel("y");

#plot the y area after the plotting
ylim([-2, 2]);

#legend
legend("cos(x)", "sin(x)");

#ticks
set(gca, 'fontsize', 16);
set(gca, 'xtick', [-4, -pi, -pi/2, 0, pi/2, pi, 4]);

#title
title("SinCosine");