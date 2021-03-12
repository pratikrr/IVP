#Practical 3 : Histogram Equalization

pkg load image;
clear all;
close all;

pic=imread('fields.jpg');
row=size(pic,1);
col=size(pic,2);
pichist=uint8(zeros(row,col));
n=row*col;
f=zeros(256,1);
pdf=zeros(256,1);
cdf=zeros(256,1);
cumm=zeros(256,1);
out=zeros(256,1);

for i=1:row
  for j=1:col
    values=pic(i,j);
    f(values+1)=f(values+1)+1;
    pdf(values+1)=f(values+1)/n;
    
  endfor
endfor  

sum=0; L=255; size(pdf);
for i=1:size(pdf)
  sum=sum+f(i);
  cum(i)=sum;
  cdf(i)=cum(i)/n;
  out(i)=round(cdf(i)*L);
endfor

for i=1:row
  for j=1:col
  pichist(i,j)=out(pic(i,j)+1);
endfor
endfor

figure,
subplot(2,2,1), imshow(pic); title('original image');
subplot(2,2,2), imhist(pic); title('original hist');
subplot(2,2,3), imshow(pichist); title('after processing image');
subplot(2,2,4), imhist(pichist); title('after processing hist');


