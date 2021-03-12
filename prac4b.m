
#Practical 4 : Image filtering in Spatial Domain
#A. Low-pass Filter/Smoothing Filters (Weighted Average filter)


pkg load image;
clear all;
close all;

pic=imread('hawk1.png'); % To read image
Noiseimg=imnoise(pic,'salt & pepper'); % Adding salt & pepper noise to image
w=(1/16)*[1 2 1;2 4 2;1 2 1]; % Defining the box filter mask
% get array sizes
[ma, na] = size(Noiseimg)
[mb, nb] = size(w)
% To do convolution
c = zeros( ma+mb-1, na+nb-1 );
size_c=size(c)
for i = 1:mb
  for j = 1:nb
    r1 = i
    r2 = r1 + ma - 1
    c1 = j
    c2 = c1 + na - 1
    c(r1:r2,c1:c2) = c(r1:r2,c1:c2) + w(i,j) * (Noiseimg);
  end
end
% extract region of size(a) from c
r1 = floor(mb/2) + 1;
r2 = r1 + ma - 1;
c1 = floor(nb/2) + 1;
c2 = c1 + na - 1;
c = c(r1:r2, c1:c2);
figure
subplot(1,2,1)
imshow(Noiseimg);
title('Noisy Image(Salt & Pepper Noise)');
subplot(1,2,2)
imshow(uint8(c));
title('Denoised Image using Weighted Average');
