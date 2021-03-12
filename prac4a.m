#Practical 4 : Image filtering in Spatial Domain
#A. Low-pass Filter/Smoothing Filters (Average filter using inbuilt functions)


pkg load image;
clear all;
close all;

pic=imread('hawk1.png');
pic=im2double(pic);
noiseimg=imnoise(pic,'salt & pepper' );
f=ones(3,3)/9;
avgfilter=filter2(f,noiseimg);

figure
subplot(1,2,1);imshow(avgfilter); title('After applying average filter');
subplot(1,2,2);imshow(noiseimg); title('noised image');
