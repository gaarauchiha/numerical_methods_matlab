function R = romberg(f, a, b, n)

    R = zeros(n, n);

    for k = 1:n
        R(k, 1) = trapezoidal(f, a, b, k);
    end

    for j = 2:n
        for k = j:n
            R(k, j) = (4^(j-1) * R(k, j-1) - R(k-1, j-1)) / (4^(j-1) - 1);
        end
    end
end

function T = trapezoidal(f, a, b, k)


    n = 2^(k-1); 
    h = (b - a) / n; 

    T = 0.5 * (feval(f, a) + feval(f, b)); 
    for i = 1:n-1
        x = a + i * h;
        T = T + feval(f, x);
    end
    T = T * h;
end