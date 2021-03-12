#Practical 4 : Image filtering in Spatial Domain
#B. High-pass Filter/Sharpening Filters (Sobel Operator using edge function)

pkg load image;
clear all;
close all;

#Take input image
img=imread("peppers.png");

#function to find edge using sobel filter
sobel = edge(img,'Sobel');
figure;
subplot(2,2,1)
imshow(img);
title('Original Image');
subplot(2,2,2)
imshow(sobel);
title("Edge detection using sobel filter");

#function to find edge using sobel filter
robert = edge(img,'Roberts');
prewitt = edge(img,'Prewitt');
subplot(2,2,3)
imshow(robert);
title('Edge detection using robert filter');
subplot(2,2,4)
imshow(prewitt);
title("Edge detection using prewitt filter");
