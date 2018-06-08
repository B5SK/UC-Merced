function [ w ] = Order2RK( f, a, b, alpha, N )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    h = (b-a)/N;

    w = zeros(1, N+1);
    
    t = a;
    w(1) = alpha;
    result = alpha;
    for i = 2:N+1
         result = result + h * f(t + h/2, result + 0.5 * h * f(t, result));
         w(i) = result;
         t = a + (i-1) * h;
         
    end
end

