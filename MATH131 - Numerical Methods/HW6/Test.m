w = zeros(1, 12);

t = 2;

h = 0.1;

result2 = 1;
result = 0;

f = @(x) x.^2;

for i = 3:(11+1)
        w(i) = result2 + h(3*f(t, result2) - f(t - h, result))/2;
        
        result = result2;
        result2 = w(i);
        
        t = 2 + i*h;
    end    