#Function F
#Two numbers: a, b
#Error tolerance: tol
#Maximum number of iterations, N
#Root: c
#Number of iterations: n
#Bound error: err
  #E = |x.n - c|
    #Is it |x.n - x.n+1| ?

#For function as input to work, you need to apply the Anonymous Function syntax
  #Which is... @(x) 2*sin(x) - x  
  
function [c, n, err] = bisection_method (f, a, b, tol, N)
  n = 1;#Initial Iteration: 1
  fa = f(a);
  #This is E = |x.n - c| The difference between the next c and the 
  err = (b-a)/2;
  

  while n < N
    
    #Initialize
      #a + (b-a)/2 is used for the roundoff error in computer arithmetic
    c = a + (b-a)/2;
    fc = f(c);
    
    
    #End the loop if c == 0
    if(f(c) == 0)
      break;
    endif
    
    #If fa*fc is higher than 0, then 0 is located in the right hand
    #If it is lower than 0, then 0 is located in the left hand
    #Function sign() is used for sign in order to remove the possibility overflow
    if((sign(fa)*sign(fc)) > 0)
      a = c;
      fa = fc;
    else
      b = c;
    endif
    
    #If next error is less than the tolerance, then exit immediately
      #without incrementing the iteration counter, n
    err = (b-a)/2;
    
    if(err > tol)
      n++;
    else
      break;
    endif
    
   endwhile
  
endfunction
