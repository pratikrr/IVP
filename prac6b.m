#Practical 6 : Image Compression Techniques and watermarking
#B. Watermarking

pkg load image;
clear all;
close all;

#Input Image where we want to apply watermark
pic=imread('lena_color_512.tif');

#For watermarking, size of inputimage and watermarking image should be same
#there for we changed the size of image using imresize and dispalyed

picresized=imresize(pic,[560 560]);
figure;
subplot(1,3,1);
imshow(picresized);
title('Original Image with resized');

#Watermarking Image
w=imread('watersample.jpg');
#Again Resized the Watermarking Image
wr=imresize(w,[560 560]);
subplot(1,3,2);imshow(wr);
title('watermark');

#Applied watermarking
alpha=0.7;
fw=(1-alpha)*picresized + alpha.*wr;
#Display the watermarked Image
subplot(1,3,3);imshow(fw);
title('Watermaked Image');
