function [ I ] = Simp_int( f, a, b, n )

    h = (b - a) / n;
    
    x = a:h:b;
    
    %I = f(x(0)) + f(x(n)) -> f(x(1)) + f(x(n+1))
        %I is added before going into loop
        %After the toop, I will be multiplied by h/3
            %to complete the formula
    I = f(a) + f(b);
    
    for i = 2:(n/2)

    %j=1 -> n/2-1
        %j = 1   -> j = 2
        %n/2 - 1 -> n/2
        %Index: 2*j = 2 -> 2*j - 1 = 3
           %Checks out for every other index values as well
           %x(2) = x(3)
        
        I = I + 2*f(x(2*i - 1));
        
    end
        
    for i = 2:(n/2 + 1)   
    
    %j=1 -> n/2
        %j = 1   -> j = 2
        %j = n/2 -> n/2 + 1
        
        
        I = I + 4*f(x(2*i - 2));
        
    end
    
    I = I * h / 3;
    
end

