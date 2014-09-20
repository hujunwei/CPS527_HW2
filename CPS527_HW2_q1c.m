%CPS527 HW2 Q1c
clc;
clear all;
% generate joint probability p
x = linspace(-0.1, 2.1, 201);
y = linspace(0,1,101)';
p = pXYa(x,y);
% calculate marginal probability
Px = pXa(x);
col_zero_ix = find(Px == 0);

% calculate conditional probability
Pygx = p ./ (ones(101, 1) * Px);
Pygx(:, col_zero_ix) = 1/101;
find(Pygx < 0.001) = 0;

% draw the contour
contour(x, y, Pygx, 20);

