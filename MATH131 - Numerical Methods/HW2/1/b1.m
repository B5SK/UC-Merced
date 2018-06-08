%This script calls the bisection_method with the given functions,
    %intervals, etc.
    
%Function: f(x) = 2sin(x) - x
%Interval: [pi/2, pi]
%Accuracy: Error < 10^-5
%Maximum Iteration: Not given.

[c, n, err] = bisection_method(@(x) 2*sin(x) - x, pi/2, pi, 10^-5, 999);

disp("c: "), disp(c)
disp(" ")

disp("n: "), disp(n)
disp(" ")

disp("error: "), disp(err)
disp(" ");