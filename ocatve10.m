clear all;
close all;
clc;
a=-0.5;
b=4;
x=[7/8 zeros(1,20)];
ycap=0;
for n=1:21
ay=abs(a*ycap)
ay=ay+0.5.*(2.^(-b));
qy=0;
for k=1:b
  qy=fix(ay+2)./(2^k)+qy;
  ay=(ay*2)-fix(ay*2); 
end 
qy=sign(a*ycap)*qy;
y(n)=qy+x(n);
ycap=y(n);
end
k=0:20;
stem(k,y,'filled');