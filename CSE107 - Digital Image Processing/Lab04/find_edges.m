function [Output] = find_edges (Matrix, Thresh)
  %{
    find_edges  =   Taking an input of a grayscale image matrix and a threshold value
                      to detect edges, this function outputs a matrix of uint8 with only values
                        255 and 0 for with edge and with no edge respectively.
                              
    Syntax:
      Output = find_edges(Matrix, Thresh)
      
    Output:
      Output =  uint8 grayscaled image after edge detection
      
    Input:
      Matrix  = Grayscale Image in Matrix format
      Thresh  = Threshold value that detects edge based on the threshold
      
    History:
      Benjamin Kwon   11/13/2017    Created&Finished
  
  %}
  
  Output = gradient_magnitude(Matrix);
  
  [R,C] = size(Output);
  
  for i = 1:R
    for j = 1:C
      
      if(Output(i,j) < Thresh)
          Output(i,j) = 0;
          
      else Output(i,j) = 255;
          
      endif
    
    end
  end
  
  Output = uint8(Output);

endfunction
