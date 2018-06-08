%Test script of gray scaled 256x256

Image = zeros(256);

%Create the unaltered image and print

  for i = 1:256
    for j = 1:256
      Image(j, i) = i-1;
    end
  end
  
%display matrix of Image for verification
%disp('Matrix of Image')
%disp(Image)

%display the greyscaled picture of Image
imshow(uint8(Image));