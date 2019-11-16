clc;
close all;
clear all;
x1=[1,2,2,1,0,0,0];
x2=[1,2,3,4,0,0,0];
N=7;
y=zeros(1,N);
for n=0:N-1
  m=0:N-1;
  xs2=mod(n-m,N);
  y2=x2(xs2+1);
  yn=x1.*xs2;
  y(n+1)=sum(yn);
end 
n=0:N-1;
stem(n,y,'filled');
