%Same as others

[c, n, err] = fixed_point_iteration(@(x) x^3 - 5*x - 7, -4, 10^-5, 1000);

disp("c: "), disp(c)
disp(" ")

disp("n: "), disp(n)
disp(" ")

disp("error: "), disp(error)
disp(" ");