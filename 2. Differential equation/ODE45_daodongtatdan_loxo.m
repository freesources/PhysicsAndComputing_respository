%ODE45 - Dao dong tat dan he lo xo
clear all;
clc;
format short
k=1; m=1; c=0.2;
%c1=1:0.5:2;
%m=length(c1)
%for j=1:m;
%c=c1(j)
hamf=@(t,y)([y(2);(-k/m)*y(1)-(c/m)*y(2)]);
[t, z]=ode45(hamf,0:pi/100:10*pi,[1 0])
[t z(:,1),z(:,2)]

plot(t,z(:,1),t,z(:,2))
grid on
xlabel('t(seconds)');
ylabel('x(meters)');
%end