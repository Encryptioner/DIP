im = imread('peppers.png'); 
im=rgb2gray(im);
%% negative image
neg=255-im;

figure(1),subplot(2, 2, 1);imshow(im);title('original image');
subplot(2, 2, 2);imhist(im,100);title('original image histogram');
figure(1),subplot(2, 2, 3);imshow(neg);title('negative image');
subplot(2, 2, 4);imhist(neg,100);title('negative image histogram');
%%
