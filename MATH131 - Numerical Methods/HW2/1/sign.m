
function [output] = sign (input)
  if(input > 0)
    output = 1;
  elseif(input < 0)
    output = -1;
  else
    output = 0
  endif
    
endfunction
