function [ I ] = trap_int( f, a, b, n )

    I = 0;

    h = (b - a) / n;
    
    %x now has interval from a to b with n subintervals
    x = a:h:b;
    
    
    %i = Index of x
    %i = [a to b-h]
        %x(0) = a     -> x(1) = a
        %x(n-1) = b-h -> x(n) = b-h
        %x(n) = b     -> x(n+1) = b
    for i = 1:n
        
       I = f(x(i) + h) + f(x(i)) + I;
        
    end
    
    I = I * h / 2;

end

