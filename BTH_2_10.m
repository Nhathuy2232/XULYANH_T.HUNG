I = imread('coins.png');
% Chuy?n ?nh sang double ?? tính toán (imnoise yêu c?u double cho m?t s? lo?i nhi?u)
I_double = im2double(I);
figure;
% Ph?n a & b: Gây nhi?u mu?i tiêu (Salt-and-Pepper) và L?c Trung V? 

% a. Gây nhi?u mu?i tiêu 3%
noise_prob_sp = 0.03; % Xác su?t nhi?u là 3%
I_sp_noisy = imnoise(I_double, 'salt & pepper', noise_prob_sp);

subplot(2, 3, 1);
imshow(I);
title('1. Anh goc (Original)');

subplot(2, 3, 2);
imshow(I_sp_noisy);
title(sprintf('2. Nhieu muoi tieu (3%%)'));

% b. L?c trung v? (Median Filter) v?i kích th??c m?c ??nh 3x3
% Cú pháp: g = medfilt2(f, [m n], padopt) 
I_sp_filtered = medfilt2(I_sp_noisy, [3 3], 'symmetric'); % Dùng 'symmetric' cho padopt

subplot(2, 3, 3);
imshow(I_sp_filtered);
title('3. Loc  (Sau S&P)');

% Ph?n c: Gây nhi?u Gaussian và L?c Trung V? 

% c. Gây nhi?u Gaussian 2%
% Hàm imnoise dùng 'gaussian' c?n ?? l?ch chu?n (variance).
% Gi? s? 2% ? ?ây ám ch? ?? l?ch chu?n (std dev) là 0.02 (ho?c variance 0.0004)
noise_variance_g = 0.0004; % T??ng ???ng ?? l?ch chu?n 0.02
I_g_noisy = imnoise(I_double, 'gaussian', 0, noise_variance_g);

subplot(2, 3, 4);
imshow(I_g_noisy);
title('4. Nhieu Gaussian');

% c. L?c ?nh b? nhi?u Gaussian
% L?c trung v? có th? không t?i ?u cho nhi?u Gaussian, nh?ng v?n th?c hi?n theo yêu c?u
I_g_filtered = medfilt2(I_g_noisy, [3 3], 'symmetric');

subplot(2, 3, 5);
imshow(I_g_filtered);
title('5. L?c Trung V? (Sau Gaussian)');