clear;
I = imread('Q2_before.tif');
J = imread('Q2_after.tif');
figure
subplot(2,2,1)
imshow(I)
subplot(2,2,2)
imshow(J)
subplot(223)
imhist(I)
subplot(224)
imhist(J)