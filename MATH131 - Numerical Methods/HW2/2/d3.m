
[c, n, err] = fixed_point_iteration(@(x) x - (x^3 - 6*x - 7)/(3*x^2 - 6), -0.5, 10^-5, 100);

disp("c: "), disp(c)
disp(" ")

disp("n: "), disp(n)
disp(" ")

disp("error: "), disp(err)
disp(" ");