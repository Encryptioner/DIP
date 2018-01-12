im = imread('pout.tif');
[row, col] = size(im);
%% binary image
bin = zeros(row, col);
th=120;
for r = 1:row
   for c = 1:col
       if ( im(r, c) > th )
           bin(r, c) = 255;
       else
          bin(r, c) = 0;
       end
   end
end
figure(1),subplot(2, 2, 1);imshow(im);title('original image');
subplot(2, 2, 2);imhist(im);title('original image histogram');
figure(1),subplot(2, 2, 3);imshow(bin);title('binary image');
subplot(2, 2, 4);imhist(bin);title('binary image histogram');
%%
