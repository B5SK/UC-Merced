% --------------------- %
% Solve_Linear_System.m %
% --------------------- %

function x = Solve_Linear_System(A,b)
    
    [nA,mA] = size(A);
    
    if nA ~= mA
        error('The matrix A is not square');
    else
        n = nA;
    end
    
    [nb,mb] = size(b);
    
    if nb > 1 && mb > 1
        error('b must be a column vector');
    elseif mb > 1
        b = b';
    end
    if length(b) ~= n
        error('The length of b must equal the dimesnions of A');
    end
    
    Aug = [A b];
    
    for k = 1:n
        
        a = Aug(k,k);
        j = k;
        
        while a == 0 && j < n
            j = j+1;
            a = A(j,k);
        end
        
        if a == 0
            error('A is not invertible!');
        end
        
        if j ~= k
            Aug = row_perm(Aug,j,k);
        end
        for j = k+1:n
            Aug = row_add(Aug,j,k,-Aug(j,k)/Aug(k,k));
        end
        
    end
    
    for k = 1:n
        Aug = row_times(Aug,k,1/Aug(k,k));
    end
    
    for k = 2:n
        for j = k-1:-1:1
            Aug = row_add(Aug,j,k,-Aug(j,k));
        end
    end
    
    x = Aug(:,n+1);
    
end