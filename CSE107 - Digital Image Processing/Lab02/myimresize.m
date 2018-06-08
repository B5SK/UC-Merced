function [ OMatrix ] = myimresize( IMatrix, Y, Z, method)
%{
        Prologue
        
  myimresize    Resizes the images based on the given pixel scope and interpolation method for
                grayscaled images. The methods used are nearest and bilinear.
                
  Syntax:
      OMatrix = myimresize(IMatrix, Y, Z, method);
  
  Input:
      IMatrix = the grayscaled image with pixel values extracted from imread() function
                with data type uint8 with values ranging from 0-255
      Y = The Row for the inputted image to resize to
      Z = The Column for the inputted image to resize to
      method = A string to determine the interpolation method: 'nearest' or 'bilinear'
      
  Output:
      OMatrix = the resized grayscaled image with data type uint8 with values ranging from 0-255
      
      
  History:
    Benjamin Kwon   9/29/17   Created
    Benjamin Kwon   10/8/17   Debugged values in for loops
    Benjamin Kwon   10/8/17   Finished
%}

%{
A = Row of original Image
B = Column of original Image
%}

[A,B] = size(IMatrix);

%{
  Get value for incrementation between pixel scope
  P = Row incrementation
  Q = Column incrementation
%}
P = double(A)/double(Y);
Q = double(B)/double(Z);

%{
  R = Rows    in index
  C = Columns in index
  For the transformation. 
  
  Ex:
      R(1,2)
      C(1,2)
     Will give the approximation of the Pixel for (1,2) and the program will round them to the nearest integer
%}
R = double(zeros(Y,Z));
C = double(zeros(Y,Z));

%Initialize the first row and column as 1. Initialize the indexes of the pixel
for i = 1:Z
  R(1,i) = 1;
end

for j = 1:Y
  C(j,1) = 1;
end

%Apply incrementation to both Row and Column indexes
for i = 2:Y
  for j = 1:Z
    if((1 + (i-1)*(double)(P)) < A)
      R(i,j) = 1 + (i-1)*(double)(P); 
    else R(i,j) = A; 
    end
  end
end

for j = 2:Z
  for i = 1:Y
    if((1 + (j-1)*(double)(Q)) < B)
      C(i,j) = 1 + (j-1)*(double)(Q);
    else C(i,j) = B;
    end
  end
end

OMatrix = double(zeros(Y, Z));

if method   = 'nearest'
    %Code the nearest implmentation here.
    for i = 1:Y
      for j = 1:Z
        R(i,j) = round(R(i,j));
        C(i,j) = round(C(i,j));
      end
    end
    
    for i = 1:Y
      for j = 1:Z
        OMatrix(i,j) = IMatrix(R(i,j),C(i,j));
      end
    end
    
    
elseif method   = 'bilinear'
%{
  Input into mybillinear function:
    Four adjacent pixel location(Integer)
    Pixel intensity value
    Location of interpolated pixel(NonInteger)

   A(x) + B(y) + C(x*y) + D = Intensity Value from Billinear Interpolation after function
    
   Matrix to hold the pixel location, values and location of interpolated pixel
   1. X Y Value
   2..
   3..
   4..
   5  X Y 0 <- Value for Interpolated pixel
   
   Pixel 
%}

%bfm = Billinear function matrix
  bfm = zeros(5,3);

  for i = 1:Y
     for j = 1:Z
       bfm(5,1) = R(i,j);
       bfm(5,2) = C(i.j);
       
       %Input Location into Matrix
       bfm(1,1) = ceil(bfm(5,1));
       bfm(1,2) = ceil(bfm(5,2));
       bfm(2,1) = ceil(bfm(5,1));
       bfm(2,2) = floor(bfm(5,2));
       bfm(3,1) = floor(bfm(5,1));
       bfm(3,2) = ceil(bfm(5,2));
       bfm(4,1) = floor(bfm(5,1));
       bfm(4,2) = floor(bfm(5,2));
       
       %Input Value into Matrix
       bfm(1,3) = IMatrix(bfm(1,1), bfm(1,2));
       bfm(2,3) = IMatrix(bfm(2,1), bfm(2,2));
       bfm(3,3) = IMatrix(bfm(3,1), bfm(3,2));
       bfm(4,3) = IMatrix(bfm(4,1), bfm(4,2));
       
       Value5 = mybilinear(bfm);
       
       OMatrix(i,j) = Value5;
       
     end
  end
  
        
else
    disp('Invalid method of resizing inputted. Please try again.')
    disp('You have inputted_')
    disp(method)
    
end
    
    %Put into uint8 since the default initialization was of data type, double...
    OMatrix = uint8(OMatrix);
    
end

