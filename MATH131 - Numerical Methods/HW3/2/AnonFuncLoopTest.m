y = @(x) x;

i = 1;
while i < 4
  y =@(x) y(x) + x;

  disp('loop')
  
  i = i + 1;
end