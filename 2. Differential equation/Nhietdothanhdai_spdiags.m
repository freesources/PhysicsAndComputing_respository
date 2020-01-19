%BT sai phan huu han_Nhiet do thanh dai_Dung ham ve ma tran tam giac (2.1):
%A=[2.04 -1 0 0; -1 2.04 -1 0; 0 -1 -2.04 -1; 0 0 -1 -2.04] %B=[40.8; 0.8; 0.8; 200.8]
%KQ=A\B %a=2*ones(1,5)
clc;
clear all;
h=2; Ta=20;
x=0+h:h:10-h;
n=length(x);
hp=0.01;

f1=0;
g1=hp;
q1=-hp*Ta;

f=f1*ones(4,1);
g=g1*ones(4,1);
q=q1*ones(4,1);

a=-(h/2)*f-1
b=h^2*g+2
c=h/2*f-1
d=-h^2*q

% B=d.*ones(4,1); % B(1,1)=d(1)-a(1)*40; % B(4,1)=d(4)-c(4)*200;
% A=[a,b,c]; % A(1,:)=[b(1) c(1)] % A=zeros(n,n);
% A(1,1)=b(1);  A(1,2)=c(1);     
% A(n,n-1)=a(n);  A(n,n)=b(n);
% 
% for i=2:n-1   
%     A(i,i-1)=a(i);  
%     A(i,i)=b(i);   
%     A(i,i+1)=c(i);
% end
% tao ma tran bang function spdiags
am=[a(2:n); 0]
cm=[0; c(1:n-1)]
A=full(spdiags([am b cm],[-1 0 1],n,n))
B=d;
B(1)=B(1)-a(1)*40;
B(n)=B(n)-c(n)*200;
A
B
KQ=A\B