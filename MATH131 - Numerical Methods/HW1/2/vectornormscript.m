fprintf('Printing when x = [1, 1, 1]: ');

x = [1,1,1];
disp(vectornorm(x));
fprintf('\n');

fprintf('Printing when x = [1/(2^(1/2)), 0, 1/(2^(1/2))]: ');

x = [1/(2^(1/2)), 0, 1/(2^(1/2))];
disp(vectornorm(x));
fprintf('\n');

fprintf('Printing when x = 0:0.01:1: ');

x = 0:0.01:1;
disp(vectornorm(x));
fprintf('\n');
