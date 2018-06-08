function [ y ] = Lagrange_poly( x, datx, daty )

%P = Complete Lagrange Polynomial Equation
%Q = Part of Lagrange Polynomial Equation
P = @(a) 0;
Q = @(a) 1;

n = 1;
    for k = 1:length(datx)
        while n <= length(datx)
            if n ~= k
                Q = @(a) Q(a) .* ((a/(datx(k) - datx(n))) - (datx(n)/(datx(k) - datx(n))));
                
                %disp('datx(n)')
                %disp(datx(n))
                %disp('datx(k)')
                %disp(datx(k))

            endif
            
            n = n + 1;
            %disp('loop1');
        endwhile
        
        n = 1;
        
        P = @(a) P(a) + (Q(a) * daty(k));
        

    endfor
    
    y = P(x);

endfunction

