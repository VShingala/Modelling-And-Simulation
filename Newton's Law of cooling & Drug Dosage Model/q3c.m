clc;
clear all;
close all;

tstart = 0;
tend = 5;
dt = 0.05;
t = tstart:dt:tend;
k1 = 0.06931;
k2 = 0.0231;
X0 = 1;

X = zeros(1,length(t));
Y = zeros(1,length(t));
X(1) = X0;
Y(1) = 0;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

figure(1)
plot(t,X);
hold on
figure(2)
plot(t,Y);
hold on

disp([k1, max(Y)])

k1 = 0.11;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

figure(1)
plot(t,X,'--');
hold on
figure(2)
plot(t,Y,'--');
hold on

disp([k1, max(Y)])

k1 = 0.691;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

figure(1)
plot(t,X,'-.');
hold on
figure(2)
plot(t,Y,'-.');
hold on

disp([k1, max(Y)])

k1 = 1.0;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

figure(1)
plot(t,X,'.');
hold on
figure(2)
plot(t,Y,'.');
hold on

disp([k1, max(Y)])

k1 = 1.5;

for i=2:length(t)
    X(i) = X(i-1) - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
end

figure(1)
plot(t,X,'.-');

xlabel('Time t (in hr)');
ylabel('Amount of drug in GI-tract (in unit)');
legend('k1=0.06931','0.11','0.691','1.0','1.5');

figure(2)
plot(t,Y,'.-');

disp([k1, max(Y)])

xlabel('Time t (in hr)');
ylabel('Amount of drug in blood (in unit)');
legend('k1=0.06931','0.11','0.691','1.0','1.5');