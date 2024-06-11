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