function [Output] = spatial_filter (Image, Filter)
%{
  spatial_filter  Applies edge detection filter. Outputting a matrix of type double.
  
  Syntax:
    Output = spatial_filter(Image, Filter)
    
  Input:
    Image = Grayscale image to be filtered
    Filter  = Edge detection filter to be applied
    
  Output:
    Output  = Image of type double with same dimensions as the input image
    
  History:
    Benjamin Kwon   11/13/2017  Created&Finished

%}  
    
    %Get size of the Image
      %OR,OC = Original Image Size
    [OR,OC] = size(Image);
    
      %FR,FC = Filter Size
    [FR, FC] = size(Filter);
    
    
    %Create the Matrix for calculation
    Matrix = zeros(OR + ( FR - 1 )*2, OC + ( FC - 1 )*2);
    
    Convert = Matrix;
    
    Output = zeros(OR,OC);
    
    
    %typecast to double just in case it wasn't a double initially
    Matrix = double(Matrix);
    
    Image = double(Image);
    
    Filter = double(Filter);
   
    Output = double(Output);
    
    
    %middle index of spatial filter
    middle = FR - floor(FC/2);
    
    
    %Apply Image Matrix onto Matrix matrix
    
    for i = 1:OR
      for j = 1:OC
        Matrix(i + (middle), j + (middle)) = Image(i, j);
      end
    end
    
  
    %Spatial Filtering equation:
    
    %Size of Matrix
      [MR,MC] = size(Matrix);
    
    for i = middle:(MR - middle + 1)
      for j = middle:(MC - middle + 1)
        
        Sum = 0;
        
          for m = 1:FR
            for n = 1:FC
              
                Sum = Sum + Filter(m,n) * Matrix(i-(middle-m), j-(middle-n));
                
            end
          end
          
        Convert(i,j) = Sum;

      end
    end
 
 
    %Convert Filtered Matrix onto Output, which has the same dimensions as Original Image
  
    for i = 1:OR
      for j = 1:OC
        
        Output(i,j) = double(Convert(i + (FR-1), j + (FC-1)));
        
      end
    end

endfunction
