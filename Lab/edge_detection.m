im=imread('coloredChips.png');
g=rgb2gray(im);

p=edge(g,'prewitt');
s=edge(g,'sobel');
figure(1),subplot(2, 2, 1),imshow(im),title('original image');
subplot(2, 2, 2),imshow(g),title('grayscale image');
subplot(2, 2, 3),imshow(p),title('prewitt edge detection');
subplot(2, 2, 4),imshow(s),title('sobel edge detection');

h=[-1 0 1; -1 0 1; -1 0 1;];pv=imfilter(g,h);
h=[-1 0 1; -2 0 1; -1 0 1;];sv=imfilter(g,h);
h=[-1 -1 -1; 0 0 0; 1 1 1;];ph=imfilter(g,h);
h=[-1 -2 -1; 0 0 0; 1 2 1;];sh=imfilter(g,h);

figure(2),subplot(2, 2, 1),imshow(pv),title('prewitt vertical edge detection');
subplot(2, 2, 2),imshow(ph),title('prewitt horizontal edge detection');
subplot(2, 2, 3),imshow(sv),title('sobel vertical edge detection');
subplot(2, 2, 4),imshow(sh),title('sobel horizontal edge detection');
