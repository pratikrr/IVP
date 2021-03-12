#Practical 5 : Color Image Processing
#A. PseudoColoring

pkg load image;
clear all;
close all;

img = imread('hawk1.png'); % Read image
figure, 
subplot(1,2,1);imshow(img);title("original Image");
red = 0.66*img; 
green=0.25*img;
blue = img; 
pseudo_img = cat(3, red, green, blue);
subplot(1,2,2);imshow(pseudo_img), title('Pseudo Image');
