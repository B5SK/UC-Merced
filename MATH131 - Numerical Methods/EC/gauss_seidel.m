function [ S ] = gauss_seidel( A, b, x0, E, N )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    k = 1;
    [R, C] = size(b);
    %C is the size
    
    S = zeros(1,C);
    
    while(k <= N)
         
         for i = 1:C
            %Placeholder: Sum1 & Sum2
                %For The Sum loop
                %Initialize before going into the Sum loop
            Sum1 = 0;
            Sum2 = 0;
            
            for j = 1:(i-1)
                Sum1 = Sum1 + A(i,j) * S(j); 
                
            end
            
            for j = (i+1):C
                Sum2 = Sum2 + A(i,j) * x0(j);
                
            end
            
            S(i) = [-Sum1 - Sum2 + b(i)]/(A(i,i));
         
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

