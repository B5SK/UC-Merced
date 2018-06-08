function I = TA_simp_int(f, a, b, n)
if n < 1 
    disp('Please enter a valid n')
end

h = (b-a)/n;

I = 0;

if n > 0
    for i = 1:n
        I = I + f(a + (i-1)*h) + 4*f(a + (i-1/2)*h) + f(a + i*h);
    end
    I = h/6* I;
    
end