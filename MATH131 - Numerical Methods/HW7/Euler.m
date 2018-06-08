function [ w ] = Euler( f, a, b, alpha, N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    h = (b-a)/N;
    w = zeros(1, N+1);
    
    
    t = a:h:b;
    w(1) = alpha;
    
    for i = 2:N+1
        w(i) = w(i-1) + h*f(t(i-1), w(i-1));
        t(i) = a + (i-1)*h;
        
    end


end

