im = imread('riceblurred.png'); %reading a grayscale image
a = min(im(:));  %minimum pixel of image X
b = max(im(:)); %maximum pixel of image X 
X= (im-a).*(255/(b-a)); %just using the formula to strech
Y= ((im-a)/(b-a)).*255; %just using the formula to strech

figure(1),subplot(1, 3, 1);imshow(im);title('original image');
subplot(1, 3, 2);imshow(X);title('Contrast Streached Image 1');
subplot(1, 3, 3);imshow(Y);title('Contrast Streached Image 2');
