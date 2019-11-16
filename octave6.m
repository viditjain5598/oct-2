clc;
close all;
clear all;
w=0:0.1:2*pi;
n=0:0.5:100;
h=1./(1-0.9*exp(-j*w));
a=[1,0];
b=[1,-0.9];
zplane(a,b);