clear;
I = imread('Q3_before.tif');
J = imread('Q3_ref.tif');
K = imhistmatch(I,J);
imwrite(K,'Q3_after.tif');
figure
subplot(231)
imshow(I)
title('original')
subplot(232)
imshow(J)
title('reference')
subplot(233)
imshow(K)
title('histogram matching')
subplot(234)
imhist(I)
subplot(235)
imhist(J)
subplot(236)
imhist(K)
