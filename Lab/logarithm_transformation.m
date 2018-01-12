im = imread('cameraman.tif'); 
%im=rgb2gray(im);
[row, col] = size(im);
%% logarithmic transformation
const=0.3;
lo = zeros(row, col);
for r = 1:row
   for c = 1:col
       m=double(im(r,c));
       lo(r,c)=const.*log10(m);
   end
end
figure(1),subplot(2, 2, 1);imshow(im);title('original image');
subplot(2, 2, 2);imhist(im);title('original image histogram');
figure(1),subplot(2, 2, 3);imshow(lo);title('logarithmic transformed image');
subplot(2, 2, 4);imhist(lo);title('logarithmic transformed histogram');
%%
