im = imread('football.jpg');
%figure(1),imshow(im);

im= im(:,:,1);

[c,r]= size(im);

cmp= im;
imd= im2double(im);
logt=imd;
pw= imd;
p=5;
con=3;
gama=2.5;

for i = 1:c
    for j = 1:r
        cmp(i,j)=255- im(i,j);
        logt(i,j)=con* log(1+imd(i,j));
        pw(i,j)= p*imd(i,j)^gama;
    end
end

figure(1),title('enhancement');
subplot(4,2,1);imshow(im),title('original image');
subplot(4,2,2);imhist(im),title('original image');

subplot(4,2,3);imshow(cmp),title('complement');
subplot(4,2,4);imhist(cmp),title('complement');
subplot(4,2,5);imshow(logt),title('log transformation');
subplot(4,2,6);imhist(logt),title('log transformation');
subplot(4,2,7);imshow(pw),title('power transformation');
subplot(4,2,8);imhist(pw),title('power transformation');


imO= imread('pout.tif');

imS= im2double(imO);
%imS = imadjust(imO,stretchlim(imO),[]);

[c,r]= size(imO);

for i = 1:c
    for j = 1:r
        imS(i,j)=p*imS(i,j)^3;
    end
end

figure(2),title('stratching');
subplot(2,2,1);imshow(imO),title('original image');
subplot(2,2,2);imhist(imO),title('histogram');

subplot(2,2,3);imshow(imS),title('Contrast stratching');
subplot(2,2,4);imhist(imS),title('histogram');


[c,r]= size(im);

bm=im;
pvar=im;
svar=im;
hor=im;


for i = 2:(c-1)
    for j = 2:(r-1)
        bm(i,j)= 1/36*(im(i,j)*4+im(i-1,j)*4+im(i,j-1)*4+im(i+1,j+1)*4+im(i+1,j)*4+im(i,j+1)*4+im(i-1,j-1)*4+im(i-1,j+1)*4+im(i+1,j-1)*4);
        pvar(i,j)= (im(i,j)*0+im(i-1,j)*(-1)+im(i,j-1)*0+im(i+1,j+1)*1+im(i+1,j)*1+im(i,j+1)*0+im(i-1,j-1)*(-1)+im(i-1,j+1)*(-1)+im(i+1,j-1)*1);
        hor(i,j)= (im(i,j)*0+im(i-1,j)*0+im(i,j-1)*2+im(i+1,j+1)*(-1)+im(i+1,j)*0+im(i,j+1)*(-2)+im(i-1,j-1)*1+im(i-1,j+1)*(-1)+im(i+1,j-1)*1);
    end
end
figure(3),title('binary masking');
subplot(4,2,1);imshow(im),title('Original image');
subplot(4,2,2);imhist(im),title('hist');
subplot(4,2,3);imshow(bm),title('average');
subplot(4,2,4);imhist(bm),title('hist');
subplot(4,2,5);imshow(pvar),title('Precuit operator');
subplot(4,2,6);imhist(pvar),title('hist');
subplot(4,2,7);imshow(hor),title('horizontal');
subplot(4,2,8);imhist(hor),title('Binary masking');


figure(4);

fil = imfilter(im,[ -1 0 1; -1 0 1; -1 0 1]);
subplot(2,1,1);imshow(fil);
subplot(2,1,2);imhist(fil);