clc;
close all;
clear;

lena = imread('lena.bmp');
jet = imread('jet.bmp');
kolo = imread('kolo.bmp');
figure()
imshow(lena)
figure()
imshow(jet)

%%
figure()
imshow(imadd(lena,jet))
figure()
imshow(imadd(int16(lena), int16(jet)),[]); 
title('ADDING');

%%
figure();
imshow(imlincomb(3,lena,1,jet), []);
figure();
imshow(imlincomb(1,lena,3,jet), []);

%%
figure();
imshow(imsubtract((lena),(jet)),[]);
figure();
imshow(imsubtract(int16(lena),int16(jet)),[]); 
figure();
imshow(imabsdiff(lena,jet));

%%
figure()
imshow(immultiply(int16(lena), int16(jet)),[]);
figure()
imshow(immultiply(lena,2),[]);

maska = boolean(kolo);
figure();
imshow(immultiply(int16(lena), maska),[]);
%%
figure()
imshow(imcomplement(lena), []);

