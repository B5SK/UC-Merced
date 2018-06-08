%Test script of gray scaled 256x256

Image = zeros(256);

%Create the unaltered image and print

  for i = 1:256
    for j = 1:256
      Image(j, i) = i-1;
    end
  end
  
%display matrix of Image for verification
disp('Matrix of Image')
disp(Image)

%display the greyscaled picture of Image
%imshow(uint8(Image));

%Halftone it now

Output = halftone(Image);

%display the matrix of the halftoned Image
disp('Matrix of Output')
disp(Output)

%display the black and white picture of Image
%imshow(uint8(Output));

subplot(1,2,1), imshow(uint8(Image))
subplot(1,2,2), imshow(uint8(Output))