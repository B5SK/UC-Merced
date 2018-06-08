function [absoluteError] = Error (Terms)
  #Initialize Array
  N = 1:10;
  
  for i = 1:Terms
    N(i) = abs(sin(1) - ST(i, 1));
    
    endfor

    absoluteError = N;
endfunction
