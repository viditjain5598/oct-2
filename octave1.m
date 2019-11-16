clc;
close all;
clear all;
w=0:0.01:2*pi;
xw=1+exp(-j*w)+exp(-j*2*w)+exp(-3*j*w);
xn=[ones(1,4) zeros(1,12)];
N=16;
n=0:N-1;
k=0:N-1;

wn=exp(-j*2*pi/N*n'*k);
xk=xn*wn;
plot(w,abs(xw));hold on
stem(2*pi*k/N,abs(xk),'filled');
