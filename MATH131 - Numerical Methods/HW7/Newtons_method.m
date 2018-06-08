%Problem 1b requires the function:
  %atan(x) = 1
  %1/(x + x^2) <-This is the derivative of the arctan(x)
  
%Command:
  %[c, n, err] = Newtons_method(@(x) atan(x)-1, @(x) 1/(1+x^2), +-2, 10^-8, 1000)

function [c, n, err] = Newtons_method (f, fp, x0, tol, N)

%Initialize iteration counter
  n = 1;
%When diverged, c = -1;
  c = -1;

  while n < N
   %Division by zero is impossible
    if(fp(x0) == 0)
      break;
    end
    p = x0 - f(x0)/fp(x0);
    
    %disp(p)
    
    if abs(p - x0) < tol
      c = p;
      break;
    end

    %disp(abs(p-x0));
      
    n = n + 1;

    err = p - x0;
    
    x0 = p;

    
  end
  
 

end
