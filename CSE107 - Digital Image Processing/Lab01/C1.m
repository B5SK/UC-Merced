input = imread('Lab_01_image1.tif');

%Halftone

output = halftone(input);

imshow(uint8(output));