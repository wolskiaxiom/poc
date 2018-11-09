clc;
close all;
clear;


load funkcjeLUT;


%figure(1);
%plot(kwadratowa);

lena = imread('lena.bmp');
jet = imread('jet.bmp');

%imshow(intlut(lena,kwadratowa));

figure()
LUT(lena, kwadratowa);

figure()
LUT(lena, log);

figure()
LUT(lena, odwlog);

figure()
LUT(lena, odwrotna);

figure()
LUT(lena, pierwiastkowa);

figure()
LUT(lena, pila);

figure()
LUT(lena, wykladnicza);
