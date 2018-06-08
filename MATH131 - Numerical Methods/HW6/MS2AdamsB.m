function [ w ] = MS2AdamsB( f, a, b, alpha, N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    h = (b-a)/N;
    
    t = a;

    w = zeros(1, N+1);
    
    %Get w1 from Order 2 Runge-Kutta
    RK = Order2RK(f, a, b, alpha, N);
    
    
    %Result = wi
    %Result2 = wi+1
    result = alpha;
    result2 = RK(2);
%{    
    disp('result:')
    disp(result)
    disp('result2:')
    disp(result2)
 %}   
    
    w(1) = alpha;
    w(2) = RK(2);
    
    t = a + 2 * h;

    for i = 3:(N+1)
        w(i) = w(i-1) + h*(3*f(t - h, w(i-1)) - f(t - 2*h, w(i-2)))/2;
        
        t = a + i*h;
    end    
    
    
end

