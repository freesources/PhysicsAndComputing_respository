% y''=-5y' - 6y + t*e^(-2t)+3.9cos3t
% t=[0:0.1:3]  y(0)=0.95  y(3)=0.15
clc;
clear all;

hamu=@(t,p)([p(2);-5*p(2)-6*p(1)+t*exp(-2*t)+3.9*cos(3*t)]);
[t, p]=ode45(hamu,0:0.1:3,[0.95 0]);
[t p(:,1),p(:,2)]

hamv=@(t,z)([z(2);-5*z(2)-6*z(1)]);
[t, z]=ode45(hamv,0:0.1:3,[0 1]);
[t z(:,1),z(:,2)]

t=0:0.1:3;
n=length(t);
c=(0.15-p(n,1))/z(n,1)

KQ=p(:,1)+c.*z(:,1)

[t' KQ]
%plot(t',KQ)
%grid on
