input = imread('Lab_01_image2.tif');

%Halftone

output = halftone(input);

imshow(uint8(output));