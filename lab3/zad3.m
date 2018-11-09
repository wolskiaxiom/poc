clc;
close all;
clear;

kolo = boolean(imread('kolo.bmp'));
kwadrat = boolean(imread('kwadrat.bmp'));

figure();
imshow(kolo);
figure();
imshow(kwadrat);

figure();
imshow(not(kolo));

figure();
imshow(and(kolo,kwadrat));

figure();
imshow(or(kolo,kwadrat));

figure();
imshow(xor(kolo,kwadrat));
