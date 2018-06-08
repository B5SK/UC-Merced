function plot_histogram (h)
%{
  plot_histogram    Plot the histogram that have x-axis ranging from 0 to 255 and y-axis ranging from
                     0 to its max value. And plot the graph in bar graph form.
  
  Syntax:
    plot_histogram(h)
    
  Input:
    h =     Histogram vector
              
  Output:
    A plot that shows the histogram
    
  History:
    Benjamin Kwon     10/22/2017    created
    Benjamin Kwon     10/23/2017    finished

%}
  
  
  [t,s] = size(h);
  
  x = 0:s-1;
  
%Get Max
  t = max(h);
  
  bar(x,h);
  
  set(gca, 'Xtick', 0:50:256)
  
  
%Set limits
  xlim([0 s])
  ylim([0 t])
  
%Label
  xlabel('Intensity Values');
  ylabel('PMF');


endfunction
