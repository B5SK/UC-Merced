function [T] = histogram_transform(h)
%{
  histogram_transform   Based on the histogram, this function uses the transformation function
                          to create a vector that can be used for equalization of the image.
  
  Syntax:
    T = histogram_transform(h)
    
  Input:
    h = A histogram vector
    
  Output:
    T = A vector that contains the transformation function based on the given pixel intensity value
          with a offset of 1
          
  History:
    Benjamin Kwon     10/22/2017    Created
    Benjamin Kwon     10/23/2017    Finished

%}
  
  [R,C] = size(h);
  
  T = 1:256;
  
%Formula
  for i = 1:256
    G = 0;

    for j = 1:i

      G = G + h(1,j);
      
    end
    
    T(i) = [C-1]*G;
    
  end
  
  

endfunction
