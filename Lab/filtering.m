im=imread('cameraman.tif');g=im;

%% average filter on gaussian noise
x=[1 1 1; 1 1 1; 1 1 1]/9;
im1=imnoise(g,'gaussian',0.01);
figure(1),subplot(2, 2, 1),imshow(im1),title('gaussian noise');
f1=imfilter(im1,x);
subplot(2, 2, 2),imshow(f1),title('average filter on gaussian noise');

%% median filter on salt & pepper noise
im2=imnoise(g,'salt & pepper',0.01);
subplot(2, 2, 3),imshow(im2),title('salt & pepper noise');
f2=medfilt2(im2);
subplot(2, 2, 4),imshow(f2),title('median filter on salt & pepper noise');

%% average filter on salt & pepper noise
f3=imfilter(im2,x);
figure(2),subplot(1, 2, 1),imshow(f3),title('average filter on salt & pepper noise');
f4=medfilt2(im1);
subplot(1, 2, 2),imshow(f2),title('median filter on gaussian noise');

%%





