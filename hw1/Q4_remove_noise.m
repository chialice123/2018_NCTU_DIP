clear;

% read image
IM1 = imread('1-1.jpg');
IM2 = imread('2-1.jpg');
IM3 = imread('3-1.jpg');
IM4 = imread('4-1.jpg');
IM5 = imread('5-1.jpg');

% median filter
J1 = medfilt2(IM1);
J2 = medfilt2(IM2);
J3 = medfilt2(IM3);
J4 = medfilt2(IM4);
J5 = medfilt2(IM5);

% write img
imwrite(J1,'1-1.jpg');
imwrite(J2,'2-1.jpg');
imwrite(J3,'3-1.jpg');
imwrite(J4,'4-1.jpg');
imwrite(J5,'5-1.jpg');

clear;

% read image
IM1 = imread('1-2.jpg');
IM2 = imread('2-2.jpg');
IM3 = imread('3-2.jpg');
IM4 = imread('4-2.jpg');
IM5 = imread('5-2.jpg');

% median filter
J1 = medfilt2(IM1);
J2 = medfilt2(IM2);
J3 = medfilt2(IM3);
J4 = medfilt2(IM4);
J5 = medfilt2(IM5);
J1 = medfilt2(J1);
J2 = medfilt2(J2);
J3 = medfilt2(J3);
J4 = medfilt2(J4);
J5 = medfilt2(J5);

% write img
imwrite(J1,'1-2.jpg');
imwrite(J2,'2-2.jpg');
imwrite(J3,'3-2.jpg');
imwrite(J4,'4-2.jpg');
imwrite(J5,'5-2.jpg');

clear;

% read image
IM1 = imread('1-3.jpg');
IM2 = imread('2-3.jpg');
IM3 = imread('3-3.jpg');
IM4 = imread('4-3.jpg');
IM5 = imread('5-3.jpg');

% median filter
J1 = medfilt2(IM1);
J2 = medfilt2(IM2);
J3 = medfilt2(IM3);
J4 = medfilt2(IM4);
J5 = medfilt2(IM5);
J1 = medfilt2(J1);
J2 = medfilt2(J2);
J3 = medfilt2(J3);
J4 = medfilt2(J4);
J5 = medfilt2(J5);
J1 = medfilt2(J1);
J2 = medfilt2(J2);
J3 = medfilt2(J3);
J4 = medfilt2(J4);
J5 = medfilt2(J5);

% write img
imwrite(J1,'1-3.jpg');
imwrite(J2,'2-3.jpg');
imwrite(J3,'3-3.jpg');
imwrite(J4,'4-3.jpg');
imwrite(J5,'5-3.jpg');