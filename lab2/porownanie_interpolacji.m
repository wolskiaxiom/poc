clearvars;
close all;
clc;

parrot = imread('parrot.bmp');
chessboard = imread('chessboard.bmp');
clock = imread('clock.bmp');

image = clock;

figure()
imshow(imresize(image, 1.3, 'nearest'));

figure()
imshow(imresize(image, 1.3, 'bilinear'));

figure()
imshow(imresize(image, 1.3, 'bicubic'));

figure()
imshow(imresize(image, 2, 'nearest'));

figure()
imshow(imresize(image, 2, 'bilinear'));

figure()
imshow(imresize(image, 2, 'bicubic'));
