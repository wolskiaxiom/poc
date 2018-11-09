clearvars;
close all;
clc;

img = imread('bart.bmp');

figure('Name', 'Bart i jego histogram');
subplot(2,1,1);
imshow(img);
subplot(2,1,2);
imhist(img,256);

progDolny = 190;
progGorny = 208;

obrazBW = img > progDolny & img < progGorny;

figure('Name', 'Bart po binaryzacji');
imshow(obrazBW, []);