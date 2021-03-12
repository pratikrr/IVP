#Practical 5 : Color Image Processing
#C. Color Slicing 

pkg load image;
clear all;
close all;

input_image=imread('hawk.png');
k=rgb2gray(input_image);
[x y z]=size(k);
% z should be one for the input image
k=double(k);
for i=1:x
for j=1:y
if k(i,j)>=0 && k(i,j)<50
m(i,j,1)=k(i,j,1)+25;
m(i,j,2)=k(i,j)+50;
m(i,j,3)=k(i,j)+60;
end
if k(i,j)>=50 && k(i,j)<100
m(i,j,1)=k(i,j)+55;
m(i,j,2)=k(i,j)+68;
m(i,j,3)=k(i,j)+70;
end
if k(i,j)>=100 && k(i,j)<150
m(i,j,1)=k(i,j)+52;
m(i,j,2)=k(i,j)+30;
m(i,j,3)=k(i,j)+15;
end
if k(i,j)>=150 && k(i,j)<200
m(i,j,1)=k(i,j)+50;
m(i,j,2)=k(i,j)+40;
m(i,j,3)=k(i,j)+25;
end
if k(i,j)>=200 && k(i,j)<=256
m(i,j,1)=k(i,j)+120;
m(i,j,2)=k(i,j)+60;
m(i,j,3)=k(i,j)+45;
end
end
end
figure,
subplot(1,2,1);
imshow(uint8(k),[]);
title('Original Image');
subplot(1,2,2);
imshow(uint8(m),[]);
title("Pseudo filtred image");
