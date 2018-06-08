function [ norm ] = vectornorm( x )

% 2-Norm Function
% (Sum of x^2)^(1/2)

% Initialize Sum with 0
Sum = 0;

% for loop the (Sum of x^2)
for i = x
    Sum = Sum + i^2;
end

norm = Sum^(1/2);

end

