clearvars;
close all;
clc;

xReScale = 0.5;
yReScale = 2.5;

parrot = imread('parrot.bmp');
chessboard = imread('chessboard.bmp');
clock = imread('clock.bmp');

figure()
imshow(chessboard);

image = chessboard;

[YY,XX] = size(image);
nYY = round(YY * yReScale);
nXX = round(XX * xReScale);

nI = uint8(zeros(nYY,nXX));

yStep = YY/nYY;
xStep = XX/nXX;

for ii = 0:nYY-1
    for jj = 0:nXX - 1
        y = round(ii * yStep);
        x = round(jj * xStep);
        
        if(y > YY - 1)
            y = YY - 1;
        end
        if(x > XX - 1)
            x = XX - 1;
        end
        
        nI(ii + 1, jj + 1) = image(y + 1, x + 1);
    end
end

figure()
imshow(nI);