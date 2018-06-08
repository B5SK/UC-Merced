%f = Function
%n = 10^(-n) n is 1->6
%h = 10^(-x)
%x0 = initial value
%fp = Function derivative
%fpn = Function derivative output of fp(x0)

%(x#,y#) for the loglog at the bottom
    %(x1,y1) = Forward Difference
%Index(1,2,3,4,5)    
% 1 - Forward Difference
% 2 - 3 pt Centered Difference
% 3 - 3 pt 1-Sided Difference
% 4 - 5 pt Centered Difference
% 5 - 5 pt 1-Sided Difference

function Estimate( f, fp, x0 )
    n = 6;
    h = @(x) 10.^(-x);
    
    fpn = fp(x0);
    
    [x1,x2,x3,x4,x5] = deal([10^-1, 10^-2, 10^-3, 10^-4, 10^-5, 10^-6]);
    [y1,y2,y3,y4,y5] = deal([0,0,0,0,0,0]);
    [err1,err2,err3,err4,err5] = deal([0,0,0,0,0,0]);
    
%1
    for i = 1:n
        %{
        disp('h1');
        disp (h(i));
        %}
       y1(i) = (f(x0 + h(i)) - f(x0))/h(i);
       err1(i) = abs(fpn - y1(i));
       
    end
    
%2
    for i = 1:n
        %{
        disp('h2');
        disp (h(i));
        %}
       y2(i) = (f(x0 + h(i)) - f(x0 - h(i)))/ (2*h(i));
       err2(i) = abs(fpn - y2(i));
        
    end

%3
    for i = 1:n
        %{
        disp('h3');
        disp (h(i));
        %}
       y3(i) = (-f(x0 + 2*h(i)) + 4*f(x0 + h(i)) - 3*f(x0)) / (2*h(i));
       err3(i) = abs(fpn - y3(i));
       
    end
    
%4
    for i = 1:n
        %{
        disp('h4');
        disp (h(i));
        %}
       y4(i) = (-f(x0 + 2*h(i)) + 8*f(x0 + h(i)) - 8*f(x0 - h(i)) + f(x0 - 2*h(i))) / (12*h(i)); 
       err4(i) = abs(fpn - y4(i));
       
    end
    
%5
    for i = 1:n
        %{
        disp('h5');
        disp (h(i));
        %}
       y5(i) = (-3*f(x0 + 4*h(i)) + 16*f(x0 + 3*h(i)) - 36*f(x0 + 2*h(i)) + 48*f(x0 + h(i)) - 25 * f(x0)) / (12*h(i)); 
       err5(i) = abs(fpn - y5(i));
       
    end
    
    loglog(x1,err1,'-k',x2,err2,'-b',x3,err3,'-g',x4,err4,'-m',x5,err5,'-r','linewidth',2);
    legend('FD','3pt CD','3pt 1SD','5pt CD','5pt 1SD');
    xlabel('h');
    ylabel('Error');
    
    disp('FD has the same error values as 3pt CD');
    disp('FD Error Values: ');
    disp(err1);
    
    disp(' ');
    disp('3pt CD Error Values: ');
    disp(err2);
    
    %{
    disp('y1');
    disp(y1);
    disp(err1);
    disp('y2');
    disp(y2);
    disp(err2);
    disp('y3');
    disp(y3);
    disp(err3);
    disp('y4');
    disp(y4);
    disp(err4);
    disp('y5');
    disp(y5);
    disp(err5);
    %}
    
    