function [ I ] = mp_int( f, a, b, n )

    I = 0;
    
    h = (b - a) / n;
    
    x = (a + h/2):h:(b - h/2);
    
    for i = 1:n
       I = I + f(x(i));
        
    end

    I = h * I;
    
end

