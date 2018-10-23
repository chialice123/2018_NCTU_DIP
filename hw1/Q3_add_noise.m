clear;

% read image
IM1 = imread('1.jpg');
IM2 = imread('2.jpg');
IM3 = imread('3.jpg');
IM4 = imread('4.jpg');
IM5 = imread('5.jpg');

% add noise - salt & pepper
IMNSP1 = imnoise(IM1,'salt & pepper',0.02);
IMNSP2 = imnoise(IM2,'salt & pepper',0.02);
IMNSP3 = imnoise(IM3,'salt & pepper',0.02);
IMNSP4 = imnoise(IM4,'salt & pepper',0.02);
IMNSP5 = imnoise(IM5,'salt & pepper',0.02);

% add noise - poisson
IMNP1 = imnoise(IM1,'poisson');
IMNP2 = imnoise(IM2,'poisson');
IMNP3 = imnoise(IM3,'poisson');
IMNP4 = imnoise(IM4,'poisson');
IMNP5 = imnoise(IM5,'poisson');

% add noise - speckle
IMNS1 = imnoise(IM1,'speckle', 0.04);
IMNS2 = imnoise(IM2,'speckle', 0.04);
IMNS3 = imnoise(IM3,'speckle', 0.04);
IMNS4 = imnoise(IM4,'speckle', 0.04);
IMNS5 = imnoise(IM5,'speckle', 0.04);

% write img
imwrite(IMNSP1,'1-1.jpg');
imwrite(IMNSP2,'2-1.jpg');
imwrite(IMNSP3,'3-1.jpg');
imwrite(IMNSP4,'4-1.jpg');
imwrite(IMNSP5,'5-1.jpg');

imwrite(IMNP1,'1-2.jpg');
imwrite(IMNP2,'2-2.jpg');
imwrite(IMNP3,'3-2.jpg');
imwrite(IMNP4,'4-2.jpg');
imwrite(IMNP5,'5-2.jpg');

imwrite(IMNS1,'1-3.jpg');
imwrite(IMNS2,'2-3.jpg');
imwrite(IMNS3,'3-3.jpg');
imwrite(IMNS4,'4-3.jpg');
imwrite(IMNS5,'5-3.jpg');