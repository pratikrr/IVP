#Practical 7 :Basic Morphological Transformations 
#B) Thinning and Thickening

pkg load image;
clear all;
close all;

% Read the test Image
% Convert the image to binary image

myorigimg = imread('monarch.png');
myorigimg = im2bw(rgb2gray(myorigimg));
subplot(2, 2, 1);
imshow(myorigimg);title('Original image');

% Perform Thinning operation using bwmorph() command
% Display the dilated image

thinf = bwmorph(myorigimg,'thin');
subplot(2,2,2);
imshow(thinf);title('Thinning of the Image');

% Perform Thickening operation using bwmorph()command
% Display the dilated image

thickf = bwmorph(myorigimg,'thicken');
subplot(2,2,3);
imshow(thickf);title('Thickening of the Image');

% Perform Skeletonozation operation using bwmorph()command
% with 8 iterations and display the dilated image

skelf100 = bwmorph(myorigimg,'skel',9);
subplot(2,2,4);
imshow(skelf100);title('Skeletonization - 9 iterations');