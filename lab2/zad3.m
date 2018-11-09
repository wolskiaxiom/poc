clearvars;
close all;
clc;

lena = imread('lena.bmp');

lena256 = imresize(lena, 0.5, 'bilinear');
lena128 = imresize(lena, 0.25, 'bilinear');
lena64 = imresize(lena, 0.125, 'bilinear');


figure(1)
imshow(lena256,'InitialMagnification', 'fit');
figure(2)
imshow(lena128,'InitialMagnification','fit');
figure(3)
imshow(lena64,'InitialMagnification','fit');
