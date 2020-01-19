S=zeros(10,1);
a=zeros(10,1);
S(1)=input('Nhap vao so tien can quy doi: ')
T=[500000;200000;100000;50000;20000;10000;5000;2000;1000;500];
n=length(T);
for i=1:n-1
    S(i+1)=mod(S(i),T(i));
    a(i)=(S(i)-S(i+1))./T(i);
end
a(10)=S(10)./T(10);
KQ=[T, a]