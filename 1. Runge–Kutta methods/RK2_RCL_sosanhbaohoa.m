clear all;
clc;
C=100*10^-6;
E=10;
R=1000:2000:9000

for j=1:length(R)     
    f=@(t,q)(E-q/C)./R(j);
    format long
    h=0.005;
    t=0:h:6;
    q(1)=0;
    for i=1:length(t)-1
        k1=h*f(t(i),q(i));
        k2=h*f(t(i)+0.5*h,q(i)+0.5*k1);
        k3=h*f(t(i)+0.5*h,q(i)+0.5*k2);
        k4=h*f(t(i)+h,q(i)+k3);
        q(i+1)=q(i)+(k1+2*k2+2*k3+k4)/6;
    end
    kq=[t' q']
    plot(t,q);
    xlabel('t(s)');
    ylabel('q(C)');
    title('Anh huong R den su bien thien bao hoa');
    grid 'on' 
    hold 'on'
    legend ('R=1K','R=3K','R=5K','R=7K','R=9K');
end
