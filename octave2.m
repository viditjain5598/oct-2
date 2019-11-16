clc;
close all;
clear all;
N=9;
w=0:0.01:2*pi;
n=0:N-1;
k=0:N-1;
x=[1,2,3,4,5,6,7,8,9];
xw=exp(-j*2*pi/N*n'*k);
n1=mod(-n,N);
y1=x(n1+1);
xk=y1*xw;
stem(2*pi*k/N,abs(xk),'filled');