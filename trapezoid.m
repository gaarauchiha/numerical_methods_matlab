function v = trapezoid(funItg, a, b, n)

    h = (b - a) / n;
    x = linspace(a, b, n+1);

    y = feval(funItg, x);

    v = h * (sum(y) - 0.5 * (y(1) + y(end)));
end