clear all;
close all;
clc;
M=21;
tau=(M-1)/2;
n=0:M-1;
hd=((cos(pi*(n-tau)))./(n-tau))-((sin(pi*(n-tau)))./(pi*((n-tau).^2)));
hd(tau+1)=0
wham=0.54-0.46*cos((2*pi*n)/(M-1));
h=hd.*wham;

w=0:0.01:pi;
hw=freqz(h,1,w);
hrw=exp(-j*(pi/2-10*w)).*hw;
plot(w,hrw)