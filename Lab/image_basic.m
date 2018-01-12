im = imread('peppers.png'); 
g=rgb2gray(im);
rot = imrotate(im, 75);

figure(1),subplot(2, 2, 1);imshow(im);title('original image');
subplot(2, 2, 2);imshow(g);title('grayscale image');
subplot(2, 2, 3);imhist(g);title('histogram of rgb image');
subplot(2, 2, 4);imshow(rot);title('rotated image');

