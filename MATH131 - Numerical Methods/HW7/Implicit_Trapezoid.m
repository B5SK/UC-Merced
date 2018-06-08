function [ w ] = Implicit_Trapezoid( f, fy, a, b, alpha, N )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%   https://en.wikipedia.org/wiki/Trapezoidal_rule_(differential_equations)

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
        
        
        w(i) = w(i-1) +  0.5 * h * (f(c) + f(w(i-1)));
        
        
        t = a + i*h;
        
    end


end

