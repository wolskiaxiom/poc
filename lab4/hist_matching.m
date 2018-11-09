clc;
clearvars;
close all;
load histogramZadany;


phobos = imread('phobos.bmp');


figure('Name','Histogram zadany');
bar(histogramZadany);

figure('Name', 'Phobos po wyr�wnaniu zadanym histogramem i histogram otrzymanego obrazu');
subplot(1,2,1);
phobos_histeq = histeq(phobos, histogramZadany);
imshow(phobos_histeq );
subplot(1,2,2);
imhist(phobos_histeq);
%%
figure();
subplot(1,3,1);
imshow(phobos); title('Orygina�');
subplot(1,3,2);
imshow(imadjust(phobos)); title('Po rozci�gni�ciu');
subplot(1,3,3);
imshow(adapthisteq(phobos)); title('Po wyr�wnaniu CLAHE');
