im = imread('cameraman.tif'); 
%im=rgb2gray(im);
[row, col] = size(im);
%% exponential transformation
const=0.009;
ex = zeros(row, col);
im=im2double(im);
for r = 1:row
   for c = 1:col
       %m=double(im(r,c));
       ex(r,c) =const.*exp(im(r,c));
   end
end
figure(1),subplot(2, 2, 1);imshow(im);title('original image');
subplot(2, 2, 2);imhist(im);title('original image histogram');
figure(1),subplot(2, 2, 3);imshow(ex);title('exponential transformed image');
subplot(2, 2, 4);imhist(ex);title('exponential transformed histogram');
%%