function [Value] = mybilinear (Matrix)
  %{
              Prologue
              
    mybilinear    Performs the mybilinear interpolation using rref() function which solves Linear Equations
                  Ultimately, getting the pixel value for the interpolated pixel
    
    Syntax:
      Value = mybilinear(Matrix)
      
    Input:
      Matrix = The inputted Matrix is a 5x3 matrix that contains the pixel location and its intensity value
          Format: 1: X, Y, Value
                  2: X, Y, Value
                        .
                        .
                        .
                  5: X, Y, 0
                  
    History:
      Benjamin Kwon   10/8/2017   Created
      Benjamin Kwon   10/8/2017   Finished
  
  %}

    a = [Matrix(1,1), Matrix(1,2), Matrix(1,1)*Matrix(1,2), 1];
    b = [Matrix(2,1), Matrix(2,2), Matrix(2,1)*Matrix(2,2), 1];
    c = [Matrix(3,1), Matrix(3,2), Matrix(3,1)*Matrix(3,2), 1];
    d = [Matrix(4,1), Matrix(4,2), Matrix(4,1)*Matrix(4,2), 1];
    
    A = [a; b; c; d];
    
    B = rref(A);
    
    Value = Matrix(5,1)*B(1,4) + Matrix(5,2) * B(2,4) + (Matrix(5,1) * Matrix(5,2) * B(3,4)) + B(4,4);
    
    %Just in case the value is higher than 255...
    if(Value > 255)
      Value = 255;
    end

end
