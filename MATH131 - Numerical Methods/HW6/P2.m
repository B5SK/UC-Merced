function P2( )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    f = @(t,y) cos(t.^2 * y.^3 * exp(-t));
    
    a = 0;
    b = 5;
    alpha = 1;
    N = 100000;
    
    w = Adams4thOrderPC(f, a, b, alpha, N);
    
    h = (b-a)/N;
    
    t = a:h:b;
    
    plot(t,w);
    xlabel('Time');
    ylabel('Y');
    title('Most Accurate Method');

end

