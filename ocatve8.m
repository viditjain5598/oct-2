clear all;
close all;
clc;
M=25;
tau=(M-1)/2;
n=0:M-1;
hd=(2./(pi*(n-tau))).*((sin(n*pi/2)).^2);
wham=0.54-0.46*cos((2*pi*n)/(M-1));
hd(tau+1)=0;
h=hd.*wham;
w=-pi:0.01:pi;
hw=freqz(h,1,w);
hrw=exp(-j*(pi/2-12*w)).*hw;
plot(w,hrw)