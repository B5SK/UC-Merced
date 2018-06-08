function [ output ] = halftone( input )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
   
%Input + Output should be of type uint8
    %Convert them
    input = uint8(input);
    
    %imagesc(variable) = Plot matrices as image
    %OR imshow(variable)
    
    %Pixel-Matrix Value for Black = 0
    %Pixel-Matrix Value for White = 255
%From a gray-scaled image, you will get a value from 0-255 with
    %different shades of the version of gray
    
    %A(1:k, 1:k) = B
        %Better Nested for loop of O(n^2)
    
    
    [R, C] = size(input);
    
%Eventually used nested for loop due to time constraints

  for i = 1:R
    for j = 1:C
      if(input(i,j) >= 128)
          input(i,j) = 255;
      else
          input(i,j) = 0;
      endif
    endfor
  endfor
  
    output = input;

end

