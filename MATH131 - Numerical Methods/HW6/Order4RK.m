function [ w ] = Order4RK( f, a, b, alpha, N )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    h = (b-a)/N;
    
    w = zeros(1, N+1);
    
    
    t = a;
    w(1) = alpha;
    result = alpha;
    
    
    for i = 2:N+1
    %Get k#'s
        k1 = h*f(t, result);
        k2 = h*f(t + h/2, result + 0.5 * k1);
        k3 = h*f(t + h/2, result + 0.5 * k2);
        k4 = h*f(t + h, result + k3);
        
        result = result + (k1 + 2*k2 + 2*k3 + k4)/6;
        
        w(i) = result;
        
        t = a + (i-1) * h;
    end

end

