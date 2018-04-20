clc;
clear all;
close all;

tstart = 0;
tend = 5;
dt = 1;
t = tstart:dt:tend;
T0 = 6;
Tm = 25;

T = zeros(1,length(t));
T(1) = T0;
k = 1.335;

for i=2:length(T)
    T(i) = T(i-1) + k*(Tm-T(i-1))*dt;
end

figure()
plot(t,T,'b')
hold on

dt = 0.5;
t = tstart:dt:tend;

T = zeros(1,length(t));
T(1) = T0;

for i=2:length(T)
    T(i) = T(i-1) + k*(Tm-T(i-1))*dt;
end

plot(t,T,'--r')
hold on

dt = 0.1;
t = tstart:dt:tend;

T = zeros(1,length(t));
T(1) = T0;

for i=2:length(T)
    T(i) = T(i-1) + k*(Tm-T(i-1))*dt;
end

plot(t,T,'-.m')
hold on

dt = 0.05;
t = tstart:dt:tend;

T = zeros(1,length(t));
T(1) = T0;

for i=2:length(T)
    T(i) = T(i-1) + k*(Tm-T(i-1))*dt;
end

plot(t,T,'.k')
xlabel('Time t (in hr)')
ylabel('Temperature T (in ^oC)')
legend('dt=1','0.5','0.1','0.05')