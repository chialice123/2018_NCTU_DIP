clear;
I = imread('Fig0427(a)(woman).tif');
I = im2double(I); % convert to double
[M N ] = size(I); % Take the size of image

% DFT
F = fftshift(fft2(I)); 
FP = fftshift(fft2(I,2*M,2*N));

% filtering (Gaussian and F)
sigma = 100; % Sigma Values for Gaussian Filter
% no padding
gfilter = zeros(M,N);
H = zeros(M,N);
for i = 1:M
    for j = 1:N
        dist= (i-M/2)^2 + (j-N/2)^2;
        gfilter(i,j) = exp(-(dist)/(2*(sigma)^2));
        H(i,j)=F(i,j)*gfilter(i,j);
    end
end
% padding
gfilter = zeros(2*M,2*N);
HP = zeros(2*M,2*N);
for i = 1:2*M
    for j = 1:2*N
        dist= (i-M)^2 + (j-N)^2;
        gfilter(i,j) = exp(-(dist)/(2*(sigma)^2));
        HP(i,j) = FP(i,j) * gfilter(i,j);
    end
end

% IDFT of filtered specturm
G = ifft2(ifftshift(H));
GP = ifft2(ifftshift(HP));

% cropping the picture
crop = zeros(M,N);
for i = 1:M
    for j = 1:N
        crop(i,j) = GP(i,j);
    end
end
crop = im2uint8(crop);
G = im2uint8(G);

% show the filtered picture
figure;
subplot(1,2,1);
imshow(G);
title('w/o zero padding');
imwrite(G,'Q3_100.tif');
subplot(1,2,2);
imshow(crop);
title('w/ zero padding');
imwrite(crop, 'Q3_padding_100.tif');
