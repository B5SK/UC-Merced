function [h] = compute_histogram (Matrix)
%{
  compute_histogram   Computes the histogram of given image matrix in uint8

  Syntax:
    h = compute_histogram(Matrix)
    
  Input:
    Matrix =    grayscale image to compute its histogram. uint8 with range 0-255
    
  Output:
    h =   the histogram vector of the image matrix. The sum of all of its elements is 1
    
  History:
    Benjamin Kwon     10/22/2017    Created
    Benjamin Kwon     10/23/2017    Finished

%}

  
  %R = Row
  %C = Column
  [R,C] = size(Matrix);
  
  h = zeros(1,256);
  
  %Get the count for each pixel intensity value
  for i = 1:R
    for j = 1:C
        k = Matrix(i,j);
        k = k + 1;
        h(k) = h(k) + 1;
      
    end
  end
  
  %Sum up the count and divide for histogram computation
  m = 0;
  for k = 1:256
    m = m + h(k);
  end
  
  h = h/m;
  
%{
  disp("Error Checking")
  a = 0;
  for i = 1:256
    a = a + h(i);
  end
  disp(a);
  disp("If the result is not 1, then something is wrong");
%}

endfunction
