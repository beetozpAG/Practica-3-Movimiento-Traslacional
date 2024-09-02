z1 = @(t) 0.05*sin(0.5*pi*t);
z2 = @(t) 0.05*sin(20*pi*t);
[t,x] = ode45(@(t,x) M_T(t,x,z2(t)), [0,5], [0, 0, 0, 0 ]);

figure;
subplot(2,1,1);
plot(t, x(:,1), 'LineWidth', 2);
xlabel('Tiempo (s)');
ylabel('x_1(t)');
title('Simulación con z(t) = 0.05 sin(0.5 \pi t)');
grid on;

subplot(2,1,2);
plot(t, x(:,2), 'LineWidth', 2);
xlabel('Tiempo (s)');
ylabel('x_2(t)');
grid on;