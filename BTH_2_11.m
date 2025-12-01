% Bài 2.11: So sánh L?c Tuy?n tính và L?c Phi tuy?n (Trung v?)

% 1. N?p ?nh b? nhi?u
f = imread('dataImages\Fig0335(a)(ckt_board_saltpep_prob_pt05).tif'); %
f_double = im2double(f); % Chuy?n sang double ?? tính toán

% --- a. L?c Tuy?n tính (Linear Filter) ---

% S? d?ng b? l?c Trung bình (Average Filter) 3x3, là m?t d?ng l?c tuy?n tính
w_linear = ones(3, 3) / 9;

% Áp d?ng l?c tuy?n tính (Convolution)
g_linear = imfilter(f_double, w_linear, 'conv', 'replicate', 'same');

% --- b. L?c Phi tuy?n (Nonlinear Filter) - L?c Trung v? ---

% Áp d?ng l?c Trung v? (Median Filter) 3x3
% Hàm medfilt2 là m?t hàm l?c phi tuy?n
g_nonlinear = medfilt2(f_double, [3 3]); % Kích th??c m?c ??nh [3 3]

% --- 2. Hi?n th? và So sánh K?t qu? ---

figure;

subplot(1, 3, 1);
imshow(f);
title('1. ?nh G?c (Original Image)');

subplot(1, 3, 2);
imshow(g_linear);
title('2. L?c Tuy?n tính (Trung bình 3x3)');

subplot(1, 3, 3);
imshow(g_nonlinear);
title('3. L?c Phi tuy?n (Trung v? 3x3)');