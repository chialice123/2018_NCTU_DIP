clear;
I = imread('Q1_before.tif');
J = histeq(I);
figure
subplot(2,2,1)
imshow(I)
subplot(2,2,2)
imshow(J)
imwrite(J,'Q1_after.tif');
subplot(223)
imhist(I)
subplot(224)
imhist(J)
