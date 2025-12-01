% 2.3 Histogram Equalization
i = imread('dataImages\Fig0316(4)(bottom_left).tif');

figure;
subplot(1,2,1), imshow(i); title('anh goc');
subplot(1,2,2), imhist(i); title('Histogram goc');

i_eq = histeq(i,256);

figure;
subplot(1,2,1), imshow(i_eq); title('anh can bang');
subplot(1,2,2), imhist(i_eq); title('Histogram sau can bang');
