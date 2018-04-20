clc;
clear all;
close all;

tstart = 0;
tend = 5;
dt = 0.05;
t = tstart:dt:tend;
k1 = 1.386;
k2 = 0.01386;
X0 = 1;

X = zeros(1,length(t));
Y = zeros(1,length(t));
X(1) = X0;
Y(1) = 0;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

figure()
plot(t,Y,'b');
hold on

disp([k2, max(Y)])

k2 = 0.06;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

plot(t,Y,'--');
hold on

disp([k2, max(Y)])

k2 = 0.1386;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

plot(t,Y,'-.');
hold on

disp([k2, max(Y)])

k2 = 0.6386;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

plot(t,Y,'.');
hold on

disp([k2, max(Y)])

k2 = 1.386;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

plot(t,Y,'.-');
hold on

disp([k2, max(Y)])

xlabel('Time t (in hr)');
ylabel('Amount of drug in blood (in unit)');
legend('k2=0.01386','0.06','0.1386','0.6386','1.386');