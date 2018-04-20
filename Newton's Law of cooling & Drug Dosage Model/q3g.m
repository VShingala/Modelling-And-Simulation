clc;
clear all;
close all;

tstart = 0;
tend = 240;
dt = 0.05;
t = tstart:dt:tend;
k1 = 0.6931;
k2 = 0.0231;
X0 = 0;

X = zeros(1,length(t));
X(1) = X0;

Add = zeros(1,length(t));
for i=1:(0.5/dt)
    for j=1:(tend/6)
    Add(i+8*(j-1)*(1/dt)) = 6;
    end
end

Y = zeros(1,length(t));
Y(1) = 0;
anss = -1;
for i=2:length(t)
    
    X(i) = X(i-1) + Add(i)*dt - k1*X(i-1)*dt;
    Y(i) = Y(i-1) + (k1*X(i-1) - k2*Y(i-1))*dt;
    if Y(i) >= 20 && anss==-1
        anss = i*0.05
    end
end

figure()
plot(t,X,'b');
hold on
plot(t,Y,'k--');
xlabel('Time t (in hr)');
ylabel('Amount of drug (in unit)');
legend('in GI-tract','in blood');

disp(max(Y))