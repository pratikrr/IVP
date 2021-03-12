#Practical 4 : Image filtering in Spatial Domain
#B. High-pass Filter/Sharpening Filters (Laplacian filter)

pkg load image;
clear all;
close all;


pic=imread('coins.png');
size(pic);
figure,
subplot(2,2,1);imshow(pic); title('original Image');
%Preallocate the matrices with zeros
I1=pic;
I=zeros(size(pic));
I2=zeros(size(pic));
%Filter Masks
F1=[0 2 0;2 -8 2; 0 2 0];

%Padarray with zeros
pic=padarray(pic,[1,1]);
pic=double(pic);
size(pic);
%Implementation of the equation in Fig.D
for i=1:size(pic,1)-2
    for j=1:size(pic,2)-2
       
        I(i,j)=sum(sum(F1.*pic(i:i+2,j:j+2)));
       
    end
end

I=uint8(I);


subplot(2,2,3);imshow(I);title('Filtered Image');
%Sharpenend Image
B=I1-I;
subplot(2,2,4); imshow(B);title('Sharpened Image');
