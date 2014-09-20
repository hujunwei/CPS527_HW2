%CPS527 HW2 Q1e
clc;
clear all;

% calculate intergrate
x = linspace(-0.1, 2.1, 201);
y = linspace(0,1,101)';
p = pXYa(x,y);
dx = (2.1 - (-0.1) ) / 200;
dy = (1 - 0) / 100;

Px = integrate(p, [], dy);
Py = integrate(p, dx, []);

Pxyp = (ones(101, 1) * Px) .* (Py * ones(1, 201)); 
col_zero_ix = find(Px == 0);
Pygxn = Pxyp ./ (ones(101, 1) * Px);
Pygxn(:, col_zero_ix) = 1/101;
find(Pygxn < 0.001) = 0;

% draw the contour
contour(x, y, Pygxn, 20);


