clearvars;
close all;
clc;


% Recznie dobrane progi:
% coins: 0.313 (82)
% rice: 0.58 (146)
% tekst: 0.667 (172)
% obiekty: 0.667 (172)

img = imread('coins.png');

figure('Name', 'Obraz i jego histogram');
subplot(2,1,1);
imshow(img);
subplot(2,1,2);
imhist(img);
%%
prog = 82/255;

figure('Name', 'Obraz po binaryzacji');
im2bw(img, prog);
%%
%img2 = imread('figura.png');
%img2 = imread('figura2.png');
%img2 = imread('figura3.png');
img2 = imread('figura4.png');


figure('Name', 'Obraz i jego histogram');
subplot(2,1,1);
imshow(img2);
subplot(2,1,2);
imhist(img2);
%%
prog2 = 60/255;

figure('Name', 'Obraz po binaryzacji');
im2bw(img2, prog2);


%% OTS'U
img = imread('rice.png');

prog = 172/255;

figure();
subplot(2,3,1);
imshow(img);
subplot(2,3,2);
imhist(img);
subplot(2,3,3);
im2bw(img, graythresh(img));
title(['metoda Otsu: ', num2str(graythresh(img))]);
subplot(2,3,6);
im2bw(img, prog);
title(['recznie: ', num2str(prog)]);

%% Kittler
subplot(2,3,4);
im2bw(img, clusterKittler(img)/255);
title(['metoda Kittler: ', num2str(clusterKittler(img)/255)]);

%% Yen
subplot(2,3,5);
im2bw(img, entropyYen(img)/255);
title(['Yen: ', num2str(entropyYen(img)/255)]);