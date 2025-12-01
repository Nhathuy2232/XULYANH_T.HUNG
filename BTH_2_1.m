%2.1 Xu ly anh X-ray
r = imread('dataImages\Fig0304(a)(breast_digital_Xray).tif');

% (a) phan tich luot do xam
figure, imshow(r); title('?nh g?c r');
figure, imhist(r); title('Histogram c?a r');

% (b) Anh am ban
sa = 255 - r;
figure, imshow(sa); title('?nh âm b?n sa');

% (c) So sanh 2 histogram
figure;
subplot(1,2,1), imhist(r), title('Histogram r');
subplot(1,2,2), imhist(sa), title('Histogram sa');

% (d) anh nhi phan theo nguong 127
t = 127;
binary_img = r > t;
figure, imshow(binary_img); title('?nh nh? phân v?i ng??ng 127');