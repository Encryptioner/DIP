clc;
clear all;
im=imread('circuit.tif');
%g=rgb2gray(im);
g=im;

%%%edge detection
h=[-1 1 1; -1 1 1;-1 1 1];
e1=imfilter(im,h);
figure(7),imshow(e1),title('horizontal edge detection');

h=[-1 -1 -1; 1 1 1;1 1 1];
e2=imfilter(im,h);
figure(8),imshow(e2),title('vertical edge detection');

h=[-1 0 1; -1 0 1;-1 0 1];
e3=imfilter(im,h);
figure(9),imshow(e3),title('precuit vertical edge detection');

h=[-1 0 1; -2 0 2;-1 0 1];
e4=imfilter(im,h);
figure(10),imshow(e4),title('sobel vertical edge detection');

h=[-1 -1 -1; 0 0 0;1 1 1];
e5=imfilter(im,h);
figure(11),imshow(e5),title('precuit horizontal edge detection');

h=[-1 -2 -1; 0 0 0;1 2 1];
e6=imfilter(im,h);
figure(12),imshow(e6),title('sobel horizontal edge detection');



