function QuestionFour( f )

%T = Result from Trapezoid Rule
%S = Result from Simpson's Rule
%M = Result from MidPoint Rule
    T = zeros(1,5);
    S = zeros(1,5);
    M = zeros(1,5);
    
%Indexed by input of n = 5
%TE = Error from T
%SE = Error from S
%ME = Error from M
    
    n = [10, 100, 10^3, 10^4, 10^5];
    
    a = 0;
    b = pi;
    %f = @(x) cos((pi * x.^2) / 2);
    
    Exact = fresnelc(pi);
    
    %Get Integral from each method
    for i = 1:5
        T(i) = trap_int(f, a, b, n(i));
        S(i) = Simp_int(f, a, b, n(i));
        M(i) = mp_int(f, a, b, n(i));
    
    end
    
    %Get Error from each method
    TE = abs(Exact - T);
    SE = abs(Exact - S);
    ME = abs(Exact - M);
    
    %Plot LogLog
    
    loglog(n, TE, '-k', n, SE, '-b', n, ME, '-g', 'linewidth', 2);
    legend('Trapezoid','Simpsons','Midpoint');
    title('Error Graph');
    xlabel('n');
    ylabel('Error');
    
    xlim([10^0 10^6]);
    ylim([10^(-25) 10^5]);
    
end

