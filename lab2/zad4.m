clearvars;
close all;
clc;

lena = imread('lena.bmp');
lena128 = imresize(lena, 0.25, 'bilinear');


a = imadjust(lena128,[],[0 1/255]);
b = imadjust(lena128,[],[0 3/255]);
c = imadjust(lena128,[],[0 7/255]);
d = imadjust(lena128,[],[0 15/255]);
e = imadjust(lena128,[],[0 31/255]);

subplot(2,3,1)
imshow(lena128, []);

subplot(2,3,2)
imshow(a, []);

subplot(2,3,3)
imshow(b, []);

subplot(2,3,4)
imshow(c, []);

subplot(2,3,5)
imshow(d, []);

subplot(2,3,6)
imshow(e, []);