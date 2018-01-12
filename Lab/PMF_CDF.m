grayImage = imread('peppers.png'); 
grayImage=rgb2gray(grayImage);

% Get histogram:
[pixelCounts, grayLevels] = imhist(grayImage);
% Computer probability density function:
pdf = pixelCounts / numel(grayImage);

% CDF
counts = histcounts(grayImage);
cdf = cumsum(counts)/sum(counts);

%g = histeq('grayImage');
%imshow(g);