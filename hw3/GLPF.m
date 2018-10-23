clear;
I = imread('Fig0427(a)(woman).tif');
[M N ] = size(I); % Take the size of image

gfilter = zeros(M,N);
sigma = 80;
for i = 1:M
    for j = 1:N
        dist= (i-M/2)^2 + (j-N/2)^2;
        gfilter(i,j) = exp(-(dist)/(2*(sigma)^2));
    end
end
imwrite(abs(gfilter), 'GLPF80.tif');