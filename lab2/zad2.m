clearvars;
close all;
clc;

xReScale = 2;
yReScale = 10;

parrot = imread('parrot.bmp');
chessboard = imread('chessboard.bmp');
clock = imread('clock.bmp');

figure()
imshow(parrot);

image = parrot;

[YY,XX] = size(image);
nYY = floor(YY * yReScale);
nXX = floor(XX * xReScale);

nI = im2double(uint8(zeros(nYY,nXX)));


yStep = YY/nYY;
xStep = XX/nXX;

for ii = 0:nXX-1
    for jj = 0:nYY - 1
        
        i1 = floor(ii*xStep);
        i2=i1+1;
        j1=floor(jj*yStep);
        j2=j1+1;
        
        if(i1> YY-1)
            i1=YY-1;
        end
        
        if(j1> XX-1)
            j1=XX-1;
        end
        if(i2 > YY - 1)
            i2 = YY - 1;
        end
        
        if(j2 > XX - 1)
            j2 = XX - 1;
        end
        
        fa = double(image(j1+1,i1+1));
        fb = double(image(j1+1,i2+1));
        fc = double(image(j2+1,i2+1));
        fd = double(image(j2+1,i1+1));
        
        fab = (i2-ii)/(i2-i1)*fa + (ii-i1)/(i2-i1)*fb;
        fcd = (i2-ii)/(i2-i1)*fd + (ii-i1)/(i2-i1)*fc;
        fabcd=(j2-jj)/(j2-j1)*fab + (jj-j1)/(j2-j1)*fcd;
        
        i_p = rem(ii,1);
        j_p = rem(jj,1);
        nI(jj+1,ii+1) = [1-i_p i_p] * [fa fd; fb fc] * [1-j_p; j_p];
%nI(jj+1,ii+1) = 0;
    end
end

figure()
imshow(uint8(nI));