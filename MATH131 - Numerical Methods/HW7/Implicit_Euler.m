function [ w ] = Implicit_Euler( f, fy, a, b, alpha, N )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%   https://math.stackexchange.com/questions/1909432/using-implicit-euler-method

    h = (b-a)/N;
    
    w = zeros(1, N+1);
    
    w(1) = alpha;
    
    %t0 = a
        %w(0) in algorithm or w(1) in matlab = alpha
    %t1 = a + h
    
    t = a + h;
    
    for i = 2:N+1
        %Get w(i)
        %Using c as placeholder
        [c, n, err] = Newtons_method(f, fy, w(i-1), 10^-5, 100);
        
        
        w(i) = w(i-1) +  h * f(c);
        
        t = a + i*h;
        
    end

end

