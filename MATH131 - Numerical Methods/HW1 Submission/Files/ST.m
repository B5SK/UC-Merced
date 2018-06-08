#Simplified version of sine_Taylor without the output for every term except the last term


function [Output] = ST (n, x)
# positive integer n that are the first n terms
# number x
# outputs the first n terms

#Because we know that this is the MacLauren Expansion, we do not need to
# worry about the (x- x.)^k

#Initialize
Output = 0;

# Array of the output of sin(0). Can be indexed by x(#)
# #  1, 2, 3,  4
y = [0, 1, 0, -1];
# Array index which can be increased and reset for the next iteration
index = 1;

# i is the iteration variable
for i = 1:n
  #Factorial f. prod(1:0) is 1
  f = prod(1:i-1);
  
  Output = Output + y(index)/f*(x.^i);

  index = index + 1;
  if(index > 4)
    index = 1;
    
  endif
  
  endfor

endfunction
