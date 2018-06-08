%Same as 1b.m

%Function: 2*sin(x) = g(x)
%Initial Guess: 3*pi/4
%Tolerance: Error < 10^-5
%Interval: [pi/2, pi]

%Maximum Iterations: 999

[c, n, err] = fixed_point_iteration(@(x) 2*sin(x), 3*pi/4, 10^-5, 999);

disp("c: "), disp(c)
disp(" ")

disp("n: "), disp(n)
disp(" ")

disp("error: "), disp(err)
disp(" ");