%Test: Each Value in Matrix can be converted based on condition from One
%line of code

x = [1, 2; 3, 4; 5, 6];

%{ 
Error: Did not work because the if statement does not apply to all elements
if(x < 3.5)
    x = 0;
else x = 1;
end
%}

%{
Error: Gives me a 1d array instead of a matrix.
The calculation seems to be wrong too. Or at least, the ordering
y(x<3.5) = 0;
y(x>3.5) = 1;

disp(y);
%}

disp('Test: Change each element in Matrix with Condition');
disp(' ');
disp('Initial Matrix Values');
disp(x);

[column, row] = size(x);

for i = 1:column
    for j = 1: row
        if(x(i,j) < 3.5)
           x(i,j) = 0;
        else
            x(i,j) = 1;
        end
    end
end

disp('Final Matrix Values');
disp(x)
disp('End');
disp(' ');

disp('Test: Change Range of Matrix');
disp(' ');
disp('Initial Matrix Values');

x = [2,2,2;2,2,2;2,2,2];
disp(x);

y = [1,1;1,1];

x(1:2, 1:2) = y;

disp('Final Matrix Values');
disp(x);
disp('End');
disp('');