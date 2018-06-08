function [Output] = equalize(Image)
%{
  equalize    Based on the given image name, this function computes its histogram,
                equalize it and output the plot, the mean, and standard deviation of the original and equalized image.
                
  Syntax:
    Output = equalize(Image)
    
  Input:
    Image = Name of the image from respective directory
    
  Output:
    Output = the matrix of the equalized image
    
  History:
    Benjamin Kwon     10/22/2017    Created
    Benjamin Kwon     10/23/2017    Finished

%}
  
  
  Matrix = imread(Image);
  Original = Matrix;
  
  [R,C] = size(Matrix);

%Get histogram and plot
  A = compute_histogram(Matrix);
  
  plot_histogram(A);
  
%Get transformation function onto T  
  T = histogram_transform(A);
  
  T = round(T);
  
%Equalize the image using T
  for i = 1:R
    for j = 1:C
      %disp('Before Transformation')
      %disp(Matrix(i,j));
    
      Matrix(i,j) = T(Matrix(i,j) + 1);
    
      %disp('After Transformation')
      %disp(Matrix(i,j));
    end
    
  end
  
%Compute histogram then plot
  B = compute_histogram(Matrix);
  
  plot_histogram(B);
  
%Output
  Output = Matrix;
  
%Display the mean and deviation
  disp('--Display the Mean and Deviation--')
  disp('')
  disp('-Displaying Original Image-')
  Original = double(Original);
  Original = Original(:);
  M = mean(Original);
  SD = std(Original);
  
  disp('Mean --')
  disp(M)
  
  disp('Standard Deviation --')
  disp(SD)
  
  disp('')
  disp('-Displaying Equalized Image-')
  Matrix = double(Matrix);
  Matrix = Matrix(:);
  
  M = mean(Matrix);
  SD = std(Matrix);
  
  disp('Mean --')
  disp(M)
  
  disp('Standard Deviation --')
  disp(SD)

endfunction
