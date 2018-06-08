function [theta_out, rho_out, accumulator] = hough_transform (i_edge)
%{
    hough_transform = An equation that determine the boundary of objects based on edge points
    
    Syntax:
      [theta_out, rho_out, accumulator] = hough_transform(i_edge)
      
    Output:
      theta_out = Theta or degree in the accumulator matrix
      
      rho_out = Rho or the diagonal length that is in the accumulator matrix
      
      accumulator = the rho-by-theta matrix for determining the prominent lin2mu
      
    Input:
      i_edge = a uint8 image with only edge points. Has only value 0 and 255 with 255 for edge points
      
    History:
      Benjamin    12/06/17    Created&NotFinished

%}

  [R, C] = size(i_edge);
  
  
  %Get diagonal size of image
  Diag = sqrt(R^2 + C^2);
  
  %Set Accumulator Matrix: 2*D+1 rows and 180 columns
  AcMatrix = zeros(floor(2*Diag + 1), 180);
    %180 Columns = (-89 to 90)
  
  %Initial Degree for increments through the theta  
  InitialDeg = -89;
    %Logic
      %{
        1 = -89
        2 = -88
        .......
        180 = 90
        %Due to zeroeroeroero
      %}
  
  %Index Logic
  Index = zeros(1, floor(2*Diag+1));
  
  for i = 1:floor((2*Diag)+1)
    Index(i) = round(-Diag + i - 1);
    %{
    disp(" ")
    disp(i)
    disp(Index(i))
    %}
  endfor
      
  
  for i = 1:R
    for j = 1:C
      if(i_edge(i,j) == 255)
          for k = 1:180
            
            rho = i*cosd(InitialDeg + k - 1) + j*sind(InitialDeg + k - 1);
            
            %{
            disp(" ")
            disp("Degree Count Check")
            disp(InitialDeg+k-1)
            
            disp("rho & k")
            disp(rho)
            disp(k)
            %}
            
            %Index
            ind = find(Index == round(rho));
            
            %{
            disp(" ")
            disp("rho then ind")
            disp(rho)
            disp(ind)
            %}

            AcMatrix(ind, k)++;
            
          endfor
      
      endif
    end
  end
  
  %Get the position with the most votes in AcMatrix
  %B = gives indice of the highest number
  [A, B] = max(AcMatrix(:));
  
  %Gives the position of the indice
  [I_row, I_col] = ind2sub(size(AcMatrix), B);
  
  rho_out = I_row;
  theta_out = I_col;
  accumulator = uint8(AcMatrix);
  

endfunction
