function [ S ] = jacobi( A, b, x0, E, N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%{
    A = matrix: n x n
    b = Column Vector
    x0 = initial guess with the same size as b
            Filled with values of x0, initially.
                Changes values later
    E = Error tolerance
    N = Max number of Iterations
    S = Solution
%}

    k = 1;
    [R, C] = size(b);
    %C is the size
    
    S = zeros(1,C);

    while(k <= N)
        for i = 1:C
            %Placeholder: Sum
                %For The Sum loop
                %Initialize before going into the Sum loop
            Sum = 0;
            for j = 1:C
               if(j ~= i) 
                  Sum = Sum + A(i,j) * x0(j);
               
               end 
            end
            
            %Add the value into the approximate solution container
            S(i) = [-Sum + b(i)]/(A(i,i));
            
            
        end
        
        
        if(abs(S - x0) < E)
            break;
        end

        k = k + 1;
        
        for i = 1:C
            x0(i) = S(i);
            
        end
    end
    
    if(k >= N)
        disp('Method Failed!')
    else 
        disp('Method Succeeded!')
        disp('Number of Iterations___')
        disp(k)
    end

end

