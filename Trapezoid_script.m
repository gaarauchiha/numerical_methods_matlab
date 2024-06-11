exact = 1 - exp(-0.8);

a = 0;
b = 0.8;

n_values = [4, 8, 16, 32, 64, 128];

errors = zeros(size(n_values));

for i = 1:length(n_values)
    n = n_values(i);
    approx = trapezoid(@funItg, a, b, n);
    errors(i) = abs(approx - exact);
end

errors
figure;
loglog(n_values, errors, '-o');
xlabel('Number of intervals');
ylabel('Absolute error');
title('Absolute error of Trapezoid Rule');
grid on;