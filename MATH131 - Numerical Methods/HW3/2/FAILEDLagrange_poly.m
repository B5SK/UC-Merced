

function [y] = Lagrange_poly (x, datx, daty)
%Initialize a set of zeroes with the length of datx
  F = zeros(length(datx)+1, length(daty)+1);
  
  
  for k = 1:length(daty)
    F(k, 1) = daty(k);
  
  end
  
  
  % +1 at each variable in equation
    %because index starts at 1, not 0
  for i = 1:length(datx)-1
    for j = 1:i
      F(i+1,j+1) = (F(i+1, j-1+1) - F(i-1+1,j-1+1))/(datx(i+1) - datx(i-j+1));
      
      disp('i')
      disp(i)
      disp('j')
      disp(j)
      
      disp(F(i+1,j+1))
      
      %disp(i);
      %disp(F(i+1, j+1));
    end
  end

  %Create the Lagrange polynomial equation
  
  %The F(0,0) of the polynomial
  
  %P(x) = Complete Lagrange Polynomial Equation
  %Q(x) = Partial Lagrange Polynomial Eq for each degree
  P = @(a) F(1,1);
  Q = @(a) 1;
  
  m = 2;
  n = 1;
  for m = 1:length(datx)+1
      while n < m
         Q = @(a) Q(a) .* (a - datx(n));
       
          %disp('n')
          %disp(n)
          %disp('m')
          %disp(m)
          %disp(Q)
          n = n + 1;
      end
      
      P = @(a) P(a) + Q(a) * F(m,m);
      
      %disp(m)
      %disp(P)
      m = m + 1;
      n = 1;
  end
  
  y = P(x);

  end