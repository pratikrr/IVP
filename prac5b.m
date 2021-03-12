#Practical 5 : Color Image Processing
#B. Separating the RGB Channels 

pkg load image;
clear all;
close all;

%READ INPUT IMAGE
pic = imread('coins.png');
%RESIZE IMAGE
pic = imresize(pic,[256 256]);
%PRE-ALLOCATE THE OUTPUT MATRIX
Output = ones([size(pic,1) size(pic,2)]);

%COLORMAPS
#maps={'jet(256)';'hsv(256)';'cool(256)';'spring(256)';'summer(256)';'parula(256)';'hot(256)'};
%COLORMAP 1
map = colormap(jet(256));
Red = map(:,1);
Green = map(:,2);
Blue = map(:,3);

R1 = Red(pic);
G1 = Green(pic);
B1 = Blue(pic);

%COLORMAP 2
map = colormap(cool(256));
Red = map(:,1);
Green = map(:,2);
Blue = map(:,3);

%RETRIEVE POSITION OF UPPER TRIANGLE
[x,y]=find(triu(Output)==1);

Output(:,:,1) = Red(pic);
Output(:,:,2) = Green(pic);
Output(:,:,3) = Blue(pic);
for i=1:numel(x)
        Output(x(i),y(i),1)=R1(x(i),y(i));
        Output(x(i),y(i),2)=G1(x(i),y(i));
        Output(x(i),y(i),3)=B1(x(i),y(i));
end
Output = im2uint8(Output);
%FINAL IMAGE
imshow(Output);
