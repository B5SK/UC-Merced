function [ w ] = Adams4thOrderPC( f, a, b, alpha, N )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

    h = (b-a)/N;
    t = a;
    
    w = zeros(1, N+1);
    w(1) = alpha;
    
    t = a + h;
    for i = 2:4
       k1 = h*f(t - h, w(i-1)); 
       k2 = h*f(t - h + h/2, w(i-1) + k1/2);
       k3 = h*f(t - h + h/2, w(i-1) + k2/2);
       k4 = h*f(t - h + h, w(i-1) + k3);
       
       w(i) = w(i-1) + (k1 + 2*k2 + 2*k3 + k4)/6;
       t = t + h;
        
    end
    
    for i = 5:N+1
        t = a + (i-1) * h;
        result = w(i-1) + h*[55*f(t - h, w(i-1)) - 59*f(t-2*h, w(i-2)) + 37*f(t - 3*h, w(i-3)) - 9*f(t - 4*h, w(i-4))]/24;
        
        w(i) = w(i-1) + h*[9*f(t, result) + 19*f(t-h, w(i-1)) - 5*f(t-2*h, w(i-2)) + f(t - 3*h, w(i-3))]/24;
        
    end


end

