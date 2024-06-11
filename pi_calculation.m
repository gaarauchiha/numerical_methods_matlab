a = 0;
b = 1/sqrt(2);
n = 6; 

R = romberg(@integrand, a, b, n);

integral_value = R(n, n);

computed_pi = 8 * integral_value;

format long;
disp(['Computed value of pi: ', num2str(computed_pi)]);













