clc;
close all;
clear all;
fp=2000;
fs=5000;
ft=20000;
wp=(2*pi*fp)/ft;
ws=(2*pi*fs)/ft;
del=ws-wp;
wc=(ws+wp)/2;
M=ceil((6.2*pi)/del) +2;
tau=(M-1)/2;
n=0:M-1;
hd=(sin(wc*(n-tau)))./(pi*(n-tau));
hd(tau+1)=0.35;
whan=0.5-0.5*cos(2*pi*n/(M-1));
h=hd.*whan;
stem(n,h,'filled');