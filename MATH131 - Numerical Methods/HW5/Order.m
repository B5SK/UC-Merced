function Order( n, E )
%ORDER Summary of this function goes here
%   Detailed explanation goes here

    x = log(n);
    y = log(E);
    
    
    p = polyfit(x,y,1);
    
    disp('Polyfit');
    disp(p);
    disp('Order of Convergence=');
    disp(-p(1));

end

