#Function: g
#Initial guess: x.0
#Error Tolerance: tol
#Maximum Iteration: N
#Current iteration: n

#Basic Idea: g(p) = p


function [c, n, err] = fixed_point_iteration(g, x0, tol, N)
#Initialize The Needed Variables
 #Initialize n
  n = 1;
  c = -1;
  
  while n < N
    p = g(x0);
    
    err = abs(p - x0);
    %disp(err)
    
    if(err < tol)
      c = p;q
      break;
      
    endif
    
    x0 = p;
    n++;
    
  endwhile

endfunction
