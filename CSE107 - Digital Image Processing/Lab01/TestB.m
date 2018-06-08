Image = zeros(256);

%Create the unaltered image and print

  for i = 1:256
    for j = 1:256
      Image(j, i) = i-1;
    end
  end
  
  disp(Image)
  
  imagesc(Image)