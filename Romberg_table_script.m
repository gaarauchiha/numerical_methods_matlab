a1 = 0; b1 = pi; exact1 = 2;
a2 = 0; b2 = 1; exact2 = 2/3;
n = 5;

R1 = romberg(@sin_func, a1, b1, n)
error1 = abs(R1 - exact1);

R2 = romberg(@sqrt_func, a2, b2, n)
error2 = abs(R2 - exact2);

format short e;
disp('Errors for integral of sin(x) from 0 to pi:');
disp(diag(error1));
disp('Errors for integral of sqrt(x) from 0 to 1:');
disp(diag(error2));

%% 

% part (d)

f1 = @sin_func;
f2 = @sqrt_func;

tol = 1e-9;

integral1_quad = quad(f1, a1, b1, tol);
integral2_quad = quad(f2, a2, b2, tol);

integral1_quadl = quadl(f1, a1, b1, tol);
integral2_quadl = quadl(f2, a2, b2, tol);


disp('Results using quad:');
disp(['Integral of sin(x) from 0 to pi: ', num2str(integral1_quad)]);
disp(['Integral of sqrt(x) from 0 to 1: ', num2str(integral2_quad)]);

disp('Results using quadl:');
disp(['Integral of sin(x) from 0 to pi: ', num2str(integral1_quadl)]);
disp(['Integral of sqrt(x) from 0 to 1: ', num2str(integral2_quadl)]);
