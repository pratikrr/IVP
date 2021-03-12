#Practical 4 : Image filtering in Spatial Domain
#B. High-pass Filter/Sharpening Filters (Sobel Operator without using edge function)

pkg load image;
clear all;
close all;

pic=imread('peppers.png');
figure,
subplot(1,2,1); imshow(pic); title('Original');
C=double(pic);
size(C)

for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        %Sobel mask for x-direction:
        Gx=((C(i+2,j)+2*C(i+2,j+1)+C(i+2,j+2))-(C(i,j)+2*C(i,j+1)+C(i,j+2)));
        %Sobel mask for y-direction:
        Gy=((C(i,j+2)+2*C(i+1,j+2)+C(i+2,j+2))-(C(i,j)+2*C(i+1,j)+C(i+2,j)));
        %The gradient of the image
        pic(i,j)=sqrt(Gx.^2+Gy.^2);
     
    end
end
subplot(1,2,2); imshow(pic); title('Sobel gradient');
