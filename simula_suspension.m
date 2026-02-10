clear; clc; close all;

tspan = [0 10];
x0 = [0 0 0 0];

caso = 1;
[t1, x1] = ode45(@(t,x) suspension(t, x, caso), tspan, x0);

figure
plot(t1, x1(:,1), 'b', 'LineWidth', 1.5); hold on
plot(t1, x1(:,2), 'r', 'LineWidth', 1.5)
grid on
xlabel('Tiempo [s]')
ylabel('Desplazamiento [m]')
legend('x_1', 'x_2')
title('Caso 1')

caso = 2;
[t2, x2] = ode45(@(t,x) suspension(t, x, caso), tspan, x0);

figure
plot(t2, x2(:,1), 'b', 'LineWidth', 1.5); hold on
plot(t2, x2(:,2), 'r', 'LineWidth', 1.5)
grid on
xlabel('Tiempo [s]')
ylabel('Desplazamiento [m]')
legend('x_1', 'x_2')
title('Caso 2')