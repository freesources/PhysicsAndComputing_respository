%RK4 - dao dong tat dan cua he lo xo:

clear all;
clc;
k=1; m=1; c1=1:0.5:2;
m=length(c1)
for j=1:m;
c=c1(j)

f=@(t,x,v)v;
g=@(t,x,v)-(k/m)*x-(c/m)*v;

h=0.02;
t=[0:0.02:10*pi];
n=length(t);

X=zeros(n,1); 
V=zeros(n,1);

X(1)=1;
V(1)=0;

for i=1:n-1
    k1=h*f(t(i),X(i),V(i));
    l1=h*g(t(i),X(i),V(i));
    
    k2=h*f(t(i)+h/2,X(i)+k1/2,V(i)+l1/2);
    l2=h*g(t(i)+h/2,X(i)+k1/2,V(i)+l1/2);
    
    k3=h*f(t(i)+h/2,X(i)+k2/2,V(i)+l2/2);
    l3=h*g(t(i)+h/2,X(i)+k2/2,V(i)+l2/2);
    
    k4=h*f(t(i)+h,X(i)+k3,V(i)+l3);
    l4=h*g(t(i)+h,X(i)+k3,V(i)+l3);
    
    X(i+1)=X(i)+(1/6)*(k1+2*k2+2*k3+k4);
    V(i+1)=V(i)+(1/6)*(l1+2*l2+2*l3+l4);
end

KQ=[t' X V]
plot(t,X)

grid on
hold on
%plot (t,V)
xlabel('t(seconds)');
ylabel('x(meters');
legend('x(t)','v(t)')
end