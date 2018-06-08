function [ A ] = row_times( A, k, B )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [nA,mA] = size(A);
    
    n = nA;
    
    for i = 1:n
         A(k, i) = A(k, i) * B;
        
    end


end

