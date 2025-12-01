% Bài 2.9: L?c tuy?n tính
% Yêu c?u: l?c nhi?u ?nh 'Fig0333 (a) (test_pattern_blurring_orig).tif'
% v?i m?t n? l?c w = (1/9) * [1 1 1; 1 1 1; 1 1 1] (b? l?c trung bình 3x3)

% 1. ??c ?nh ??u vào
f = imread('dataImages\Fig0333(a)(test_pattern_blurring_orig).tif');

% Ki?m tra n?u ?nh không ph?i d?ng grayscale, chuy?n ??i sang grayscale n?u c?n
if size(f, 3) == 3
    f = rgb2gray(f);
end

% Chuy?n ??i ?nh sang double ?? tính toán (imfilter t? ??ng chuy?n ??i, nh?ng làm rõ)
f_double = im2double(f);

% 2. ??nh ngh?a m?t n? l?c w (b? l?c trung bình 3x3)
% w = (1/9) * [1 1 1; 1 1 1; 1 1 1] 
w = ones(3, 3) / 9; % 

% 3. Th?c hi?n l?c tuy?n tính b?ng hàm imfilter
% Cú pháp: g = imfilter(f, w, filtering_mode, boundary_options, size_options) 
% Ch?n ch? ?? m?c ??nh: 'corr' (l?c dùng Correlation) , 'replicate' (m? r?ng biên b?ng vi?c l?p l?i giá tr? biên) , 'same' (?nh ??u ra cùng kích c? ?nh ??u vào) 
g = imfilter(f_double, w, 'conv', 'replicate', 'same'); % S? d?ng 'conv' (Convolution) cho b? l?c trung bình 

% 4. Hi?n th? ?nh g?c và ?nh sau khi l?c
figure;
subplot(1, 2, 1);
imshow(f);
title('Anh goc f (Original Image)');

subplot(1, 2, 2);
imshow(g);
title('Anh sau khi loc tuyen tinh g (Linear Filtered Image)');