function [ w ] = ModifiedEuler( f, a, b, alpha, N )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    h = (b-a)/N;

    w = zeros(1, N+1);
    
    %Initialize t so that the Modified Euler can use both explicit and
        %implicit data
            %Unlike Euler method which only uses explicit
    t = a:h:b;

    
    w(1) = alpha;
    for i = 2:N+1
         w(i) = w(i-1) + 0.5 * h * (f(t(i-1), w(i-1)) + f(t(i), w(i-1)) + h * f(t(i-1), w(i-1)));
        
    end

end

