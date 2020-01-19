%Energy_Slater
clc;
clear all;
format long
Z=input('Nhap vao so hieu Z cua nguyen tu: ')
%hang so chan sigma:
% 1. Z<18
if Z==0
    disp('NULL - Khong ton tai nguyen tu')
elseif (Z>0)&&(Z<3)
        sm=0.3
        Ze=Z-sm
        E=(-13.6)*(Ze)^2;
        disp('Xem phan tinh toan cac truong hop theo Z')
        sE=E
elseif (Z>=3)&&(Z<=18)
sm(1)=0.3;
    if Z<=9
        sm(2)=(Z-3)*0.35 + (2*0.85);
        sm(3)=Z; %Cai nay bang 0, vi Z<10 ko ton tai sigma 3 :v
        ett=[2,Z-2];
    else
        sm(2)=(7*0.35)+(2*0.85);
        sm(3)=2*1+(8*0.85)+(Z-11)*0.35;
        ett=[2,8,Z-10];
    end 
%so Z hieu dung:
%e va tong e:
for i=1:3
Ze(i)=Z-sm(i);
E(i)=((-13.6)*(Ze(i)/i)^2);
end
sE=0;
for j=1:length(ett)
    sE=sE+ ett(j)*E(j);
end
Hangsosigma=[ sm(1); sm(2); sm(3)]
NL=[E(1); E(2); E(3)]
disp('Xem phan tinh toan cac truong hop theo Z')
sE 

%___________________________________________________________
% 2. Z=[18;29]
elseif (Z>18)&&(Z<29)
sm(1)=0.3;
    if Z<21
        sm(4)=0.35*(Z-19) + 8*0.85 + 10*1;
        sm(3)=7*0.35 + 8*0.85 + 2*1;
        sm(2)=7*0.35 + 2*0.85;
        ett=[2,8,8,Z-19];
        Hangsosigma=[ sm(1); sm(2); sm(3); sm(4)]
    else
        sm(5)=1*0.35 + (Z-20)*0.85 + 18*1;
        sm(4)=(Z-21)*0.35 + 8*1 + 10*1;
        sm(3)=7*0.35 + 8*0.85 + 2*1;
        sm(2)=7*0.35 + 2*0.85;
        ett=[2,8,8,Z-21,2];
        Hangsosigma=[ sm(1); sm(2); sm(3); sm(4); sm(5)]
    end   
%so Z hieu dung:
k=[1;2;3;3;3.7];
q=[1;2;3;3.7];
%e va tong e:
if Z<21
    for i=1:4
        Ze(i)=Z-sm(i);
        E(i)=((-13.6)*(Ze(i)/q(i))^2);
    end
    NL=[E(1); E(2); E(3); E(4)]
    
else
    for i=1:5
        Ze(i)=Z-sm(i);
        E(i)=((-13.6)*(Ze(i)/k(i))^2);
    end
    NL=[E(1); E(2); E(3); E(4); E(5)]
end
sE=0;
for j=1:length(ett)
    sE=sE+ ett(j)*E(j);
end
disp('Xem phan tinh toan cac truong hop theo Z')
sE

%___________________________________________________________
% 3. Z=[29;36]
elseif (Z>28)&&(Z<37)
        sm(1)=0.3;
        sm(5)=(Z-29)*0.35 + 10*0.85 + 18*1;
        sm(4)=9*0.35 + 8*1 + 10*1;
        sm(3)=7*0.35 + 8*0.85 + 2*1;
        sm(2)=7*0.35 + 2*0.85;
        ett=[2,8,8,10,Z-29];
        Hangsosigma=[ sm(1); sm(2); sm(3); sm(4); sm(5)]
       
%so Z hieu dung:
k=[1;2;3;3;3.7];
%e va tong e:
    for i=1:5
        Ze(i)=Z-sm(i);
        E(i)=((-13.6)*(Ze(i)/k(i))^2);
    end
    NL=[E(1); E(2); E(3); E(4); E(5)]
    
sE=0;
for j=1:length(ett)
    sE=sE+ ett(j)*E(j);
end
disp('Xem phan tinh toan cac truong hop theo Z')
sE


    else
        disp('Chua duoc thiet lap')
end