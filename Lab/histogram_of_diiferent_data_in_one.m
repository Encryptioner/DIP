close all;
clear all;

x = -4:0.1:4;
y1 = randn(200,1);
[n,x] = hist(y1,x);
bar(x,n,'r');

hold on
y2 = randn(200,1);
[n,x] = hist(y2,x);
bar(x,n,'b');