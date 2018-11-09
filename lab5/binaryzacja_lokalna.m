clearvars;
close all;
clc;

obraz = imread('katalog.bmp');
[X Y] = size(obraz);

obrazBW = obraz;

for i = 1:X
    for j = 1:Y
        m = meanLT(i,j,15,obraz,X,Y);
        if (obraz(i,j) <= m)
            obrazBW(i,j) = 0;
        else
            obrazBW(i,j) = 255;
        end
    end
end

figure('Name', 'Obraz oryginalny i po binaryzacji lokalnej')
subplot(1,2,1);
imshow(obraz);
subplot(1,2,2);
imshow(obrazBW);

%%

img = imread('katalog.bmp');

[X, Y] = size(img);

imgBW = img;
k = 0.15;
R = 128;

for i = 1:X
    for j = 1:Y
        m = meanLT(i,j,25,img,X,Y);
        o = stddevLT(i,j,25,img,m,X,Y);
        T = m * (1 + k * (o/R -1));
        if (img(i,j) <= T)
            imgBW(i,j) = 0;
        else
            imgBW(i,j) = 255;
        end
    end
end

figure('Name', 'Binaryzacja przy pomocy metody Sauvoli');
subplot(2,1,1);
imshow(img);
subplot(2,1,2);
imshow(imgBW);