clear;
I = imread('Fig0427(a)(woman).tif');
I = im2double(I); % convert to double
[M N ] = size(I); % Take the size of image

% no padding
H1 = fft2(I); % DFT of image
M1 = abs(H1); % get the magnitude
P1 = angle(H1); % get the phase
% padding
H2 = fft2(I,2*M,2*N);
M2 = abs(H2);
P2 = angle(H2);
% show picture
figure; 
subplot(2,2,1);
imshow(log(M1),[]);
title('magnitude');
subplot(2,2,2);
imshow(P1,[]); 
title('phase');

subplot(2,2,3);
imshow(log(M2),[]);
title('magnitude (with zero padding)');
subplot(2,2,4);
imshow(P2,[]); 
title('phase (with zero padding)');