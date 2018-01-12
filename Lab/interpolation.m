im=imread('coins.png');g=im;
im=im2double(im);
[r, c]=size(im); 

f=im2double(zeros(r*2,c*2));
for i=1:r
    for j=1:c
        f(2*i-1,2*j-1)=im(i,j);
        f(2*i,2*j)=im(i,j);
    end
end

figure(1),subplot(1, 2, 1),imshow(g),title('orizinal image');
subplot(1, 2, 2),imshow(f),title('interpolated image');
[r2, c2]=size(f); 


