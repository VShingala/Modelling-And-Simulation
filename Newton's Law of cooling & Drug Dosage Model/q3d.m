clc;
clear all;
close all;

tstart = 0;
tend = 7;
dt = 0.05;
t = tstart:dt:tend;
k1 = 1.386;
k2 = 0.1386;
X0 = 0;
l = 3;

X = zeros(1,length(t));
X(1) = X0;

Y = zeros(1,length(t));
Y(1) = 0;

for i=2:length(t)
    X(i) = X(i-1) + 3*dt - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

figure()
plot(t,X,'b');
hold on
plot(t,Y,'k--');
xlabel('Time t (in hr)');
ylabel('Amount of drug (in unit)');
legend('in GI-tract','in blood');

disp(max(Y))