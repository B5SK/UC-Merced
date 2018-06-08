function QuestionFive( f )
%QUESTIONFIVE Summary of this function goes here
%   Detailed explanation goes here

    n = [10, 100, 10^3, 10^4, 10^5];
    
    a = 0;
    b = 1;
    
    Exact = integral(f, a, b);
    
    M = zeros(1,5);
    
    for i = 1:5
       
       M(i) = mp_int(f, a, b, n(i));
        
    end
    
    ME = abs(Exact - M);
    
    
    loglog(n, ME, 'linewidth', 2);
    xlabel('n');
    ylabel('Error');
    title('Error Graph');
    
    xlim([10^0 10^6]);
    
    %{
    disp('Integral');
    disp(M);
    disp('Exact');
    disp(Exact);
    disp('Error');
    disp(ME);
    %}

end

