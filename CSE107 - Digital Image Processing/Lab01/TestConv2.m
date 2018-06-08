A = [1 2; 3 4;];
B = [0 255; 0 255;];

C = conv2(A,B, 'same');
D = conv2(B,A, 'same');

disp(C)
disp(D)