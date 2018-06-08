

function [y] = Lagrange_poly (x, datx, daty)
#Initialize a set of zeroes with the length of datx
  F = zeros(length(datx)+1, length(daty)+1);
  
  for k <= length(daty)
    F(k, 1) = daty(k);
  
  endfor
  
  
  # +1 at each variable in equation
    #because index starts at 1, not 0
  for i < length(datx)
    for j <= i
      F(i+1,j+1) = (F(i+1, j-1+1) - F(i-1+1,j-1+1))/(datx(i+1) - datx(i-j+1));
      
    endfor
  endfor

  #Create the Lagrange polynomial equation
  

endfunction
