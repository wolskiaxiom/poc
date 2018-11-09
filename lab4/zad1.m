clc;
clearvars;
close all;

lena1 = imread('lena1.bmp');
lena2 = imread('lena2.bmp');
lena3 = imread('lena3.bmp');
lena4 = imread('lena4.bmp');

figure('Name','Zwi¹zek histogram - jasnoœæ');
subplot(4,2,1);
imhist(lena1, 256);
subplot(4,2,2)
imshow(lena1);

subplot(4,2,3);
imhist(lena2, 256);
subplot(4,2,4)
imshow(lena2);

subplot(4,2,5);
imhist(lena3, 256);
subplot(4,2,6)
imshow(lena3);

subplot(4,2,7);
imhist(lena4, 256);
subplot(4,2,8)
imshow(lena4);

%%
hist1 = imread('hist1.bmp');
hist2 = imread('hist2.bmp');
hist3 = imread('hist3.bmp');
hist4 = imread('hist4.jpg');
figure('Name','Obraz hist1 bez wyrównania')
subplot(1,2,1);
imhist(hist1,256);
subplot(1,2,2);
imshow(hist1);


hist1_adjust = imadjust(hist1); 
figure('Name','Obraz hist1 po rozci¹gniêciu, wraz z histogramem')
subplot(1,2,1);
imshow(hist1_adjust);
subplot(1,2,2);
imhist(hist1_adjust); 

[H,x] = imhist(hist1, 256); 
C = cumsum(H); 

k = max(C) / max(H);
C2 = C / k;

figure('Name','Histogram skumulowany przed rozci¹gniêciem v1')
hold on;
plot(x,H);
plot(x,C2);

figure('Name','Histogram skumulowany przed rozci¹gniêciem v2');
hold on;
bar(x,H);
bar(x,C2);

%histogramy po rozciaganiu
[H,x] = imhist(hist1_adjust, 256); 
C = cumsum(H); 

k = max(C) / max(H);
C2r = C / k;

figure('Name','Histogram skumulowany po rozci¹gniêciu v1')
hold on;
plot(x,H);
plot(x,C2r);

figure('Name','Histogram skumulowany po rozci¹gniêciu v2');
hold on;
bar(x,H);
bar(x,C2r);

%%
LUT = uint8(255*(C2/max(C2)));
[H2, x_2] = imhist(intlut(hist1, LUT),256);
hist_cumulated_2 = cumsum(H2);
k_2 = max(hist_cumulated_2) / max(H2);
C22 = hist_cumulated_2 / k_2; 

figure('Name', 'Obraz hist1 po wyrównaniu, jego histogram i histogram skumulowany')
subplot(1,3,1);
%hold on;
plot(x_2,H2);
%hold off;
subplot(1,3,2);
bar(x_2,C22);
subplot(1,3,3);
imshow(intlut(hist1, LUT));
title('LUT');


%%
figure()
subplot(4,4,1); imshow(hist2); title('Normal');
subplot(4,4,2); imshow(imadjust(hist2)); title('Adjust');
subplot(4,4,3); imshow(histeq(hist2)); title('histeq');
subplot(4,4,4); imshow(adapthisteq(hist2)); title('adapthisteq');

subplot(4,4,5); imshow(hist3); 
subplot(4,4,6); imshow(imadjust(hist3)); 
subplot(4,4,7); imshow(histeq(hist3)); 
subplot(4,4,8); imshow(adapthisteq(hist3)); 

subplot(4,4,9); imshow(hist4);
subplot(4,4,10); imshow(imadjust(hist4)); 
subplot(4,4,11); imshow(histeq(hist4)); 
subplot(4,4,12); imshow(adapthisteq(hist4));

