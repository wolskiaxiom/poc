clc;
clearvars;
close all;

%lenaRGB = imread('jezioro.jpg');
lenaRGB = imread('lenaRGB.bmp');
lenaHSV = rgb2hsv(lenaRGB);

figure('Name','Lena w RGB i HSV');
subplot(2,1,1)
imshow(lenaRGB);
title("rgb")
subplot(2,1,2);
imshow(lenaHSV);
title("hsv");

%RGB
lenaR = lenaRGB(:, :, 1);
lenaG = lenaRGB(:, :, 2);
lenaB = lenaRGB(:, :, 3);

figure('Name','Histogramy sk³adowych R,G,B')
subplot(1,3,1);
imhist(lenaR,256);
subplot(1,3,2);
imhist(lenaG,256);
subplot(1,3,3);
imhist(lenaB,256);

Re = histeq(lenaR,256);
Ge = histeq(lenaG,256);
Be = histeq(lenaB,256);

obrazEQRGB(:, :, 1) = Re;
obrazEQRGB(:, :, 2) = Ge;
obrazEQRGB(:, :, 3) = Be;

figure('Name','RGB po wyrównaniu sk³adowych R,G,B');
imshow(obrazEQRGB);

%HSV 
lenaH = lenaHSV(:, :, 1);
lenaS = lenaHSV(:, :, 2);
lenaV = lenaHSV(:, :, 3);

figure('Name','Histogramy sk³adowych H,S,V')
subplot(1,3,1);
imhist(lenaH,256);
subplot(1,3,2);
imhist(lenaS,256);
subplot(1,3,3);
imhist(lenaV,256);

V = histeq(lenaV,256);

obrazEQHSV(:, :, 1) = lenaH;
obrazEQHSV(:, :, 2) = lenaS;
obrazEQHSV(:, :, 3) = V;

figure('Name','HSV po wyrównaniu sk³adowej V');
imshow(hsv2rgb(obrazEQHSV));

