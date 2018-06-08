function [ Sum ] = mysum( n )

% j is Result
j = 0;

% For loop from 1 to n
for i = 1:n
    j = j + i;
end

% Transfer j to the output variable, Sum
Sum = j;
end
