clc;
clear all;
N=8;
W=exp(-2*i*pi/N)
x=[1,1,1,1,0,0,0,0]
n=1:N;
h=T/n;
t=0:h:T;
for n=1:N
    for k=1:N
      X(1,n)=X(1,n)+x(k)*W(n*k);
    end
end

% Cach2
% N=8;
% W=exp(-2*i*pi/N)
% x=[1,1,1,1,0,0,0,0];
% X=zeros(1,N);
% for n=1:N
%     for k=1:N
%       X(1,n)=X(1,n)+x(k)*W(n*k)
%     end
% end
