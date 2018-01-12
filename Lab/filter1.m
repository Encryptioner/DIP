clc;
clear all;
im=imread('cameraman.tif');
%g=rgb2gray(im);
g=im;

%%% average filter
x=[1 1 1; 1 1 1; 1 1 1]/9;
%gaussian
im1=imnoise(g,'gaussian',0.01);
figure(1),imshow(im1),title('gaussian noise');
f1=imfilter(im1,x);
figure(2),imshow(f1),title('average filter on gaussian noise');

%salt & pepper
im2=imnoise(g,'salt & pepper',0.01);
figure(3),imshow(im2),title('salt & pepper noise');
f2=imfilter(im2,x);
figure(4),imshow(f2),title('average filter on salt & pepper noise');

%%%median filter
f3=medfilt2(im1);
figure(5),imshow(f3),title('median filter on gaussian noise');
f4=medfilt2(im2);
figure(6),imshow(f4),title('median filter on salt & pepper noise');





