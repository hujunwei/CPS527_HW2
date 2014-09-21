%CPS527 HW2 Q1b
% calculate intergrate
clc;
clear all;
x = linspace(-0.1, 2.1, 201);
y = linspace(0,1,101)';
p = pXYa(x,y);
dx = (2.1 - (-0.1) ) / 200;
dy = (1 - 0) / 100;
Pxn = integrate(p, [], dy);
Pxa = pXa(x);
RMSD = sqrt( sum((Pxn - Pxa).^2)/201 );
% visualize the graph
plot(x, Pxn,'b');
hold on;
plot(x, Pxa,'xr');