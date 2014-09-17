%CPS527 HW2 Q1a
clc;
clear all;

% calculate intergrate
x = linspace(-0.1, 2.1, 201);
y = linspace(0,1,101)';
p = pXYa(x,y);
dx = (2.1 - (-0.1) ) / 200;
dy = (1 - 0) / 100;
i = integrate( p, dx, dy);

% calculate marginal pX and visualize
Px = pXa(x);
plot(x, Px,'r','LineWidth',1);
xlabel('x', 'fontsize',18);
ylabel('Marginal probability Px ', 'fontsize',18);