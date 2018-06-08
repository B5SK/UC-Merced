function [Value] = myRMSE (Original, Reconst)
  %{
                Prologue
                
      myRMSE    RMSE is the root mean squared error. In this case, we are comparing the matrix
                of two images with the matrix's values as gray-scaled images in data type uint8
      
      Syntax
        Value = myRMSE(Original, Reconst)
        
      Input:
        Original = The original gray-scaled image's matrix filled with uint8 values
        Reconst = The reconstructed gray-scaled image's matrix filled with uint8 values
        
      Output:
        Value = The root mean squared error.
        
      History:
        Benjamin Kwon   10/8/2017   Created
        Benjamin Kwon   10/8/2017   Fixed bug due to wrong index
        Benjamin Kwon   10/9/2017   Finished
  
  %}
  

  [R,C] = size(Original);
  
  Sum = double(0);
  
  %Here is the implementation of the double sum after initializing the variables
  for i = 1:R
    for j = 1:C
      Sum = Sum + double((double(Original(i,j)) - double(Reconst(i,j)))).^2;
    end
  end
  
  Value = Sum/(R*C);
  
  Value = sqrt(Value);


end
