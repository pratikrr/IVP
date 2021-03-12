#Practical 7 :Basic Morphological Transformations 
#A) Boundary Extraction 


pkg load image;
clear all;
close all;

pic=imread('pepper.jpg'); 
pic=rgb2gray(pic);
pic(pic<225)=0;
se=strel('disk',4,0);%Structuring element
binaryimg=~im2bw(pic);%binary Image

erodedimg=imerode(binaryimg,se);%Erode the image by structuring element


figure,
subplot(1,3,1);
imshow(pic);title('Original Image');
subplot(1,3,2);
imshow(binaryimg);title('Binary Image');
%Difference between binary image and Eroded image
subplot(1,3,3);imshow(binaryimg-erodedimg);title('Boundary extracted Image');