function [Magn] = gradient_magnitude (Matrix)
  %{
    gradient_magnitude  =   Taking an input of a grayscale image matrix, this function outputs
                              the magnitude of the gradient. 
                              
    Syntax:
      Magn = gradient_magnitude(Matrix)
      
    Output:
      Magn =  Magnitude of the gradient in type double
      
    Input:
      Matrix  = Grayscale Image in Matrix format
      
      
    History:
      Benjamin Kwon   11/13/2017    Created&Finished
  
  %}
  
  %Sobel Masks
    %Sx = Gx of Sobel masks
    %Sy = Gy of Sobel masks
  Sx = [-1, -2, -1; 0, 0, 0; 1 2 1];
  Sy = [-1 0 1; -2 0 2; -1 0 1];
  
  Gx = spatial_filter(Matrix, Sx);
  Gy = spatial_filter(Matrix, Sy);
  
  [R, C] = size(Matrix);
  
  Magn = zeros(R,C);
  
  for i = 1:R
    for j = 1:C
      
      Magn(i,j) = sqrt(Gx(i,j)^2 + Gy(i,j)^2);
      
    end
  end

endfunction
