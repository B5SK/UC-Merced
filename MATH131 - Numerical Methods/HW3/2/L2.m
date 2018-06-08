
function [y] = Lagrange_poly (x, datx, daty)
  y = 0;

  for k = 1:length(datx)
  %p = 1 for the first convolution
  p = 1;    
  
    for n = 1:length(datx)
       if n ~= k
         q = poly((x-datx(n))/(datx(k) - datx(n)));
         p = conv(p, q);
       endif
    endfor
    
    y = y + p*daty(k);
    
  endfor


endfunction
