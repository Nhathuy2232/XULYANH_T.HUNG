% a. ??c ?nh f (ví d? ?nh fractal-iris)
f = imread('dataImages\Fig0122(a)(fractal-iris).tif');

% N?u ?nh là ?nh RGB, chuy?n ??i v? ?nh grayscale
if size(f, 3) == 3
    f = rgb2gray(f);
end

% Chuy?n ?nh f v? ki?u d? li?u double ?? tính toán
f = double(f);

% T?o ?nh h b?ng cách ??t 4 bit th?p c?a m?i pixel thành 0
h = bitshift(f, -4);  % D?ch 4 bit sang ph?i
h = bitshift(h, 4);   % D?ch l?i 4 bit sang trái, ch? gi? các bit cao

% b. T?o ?nh g b?ng phép tr? ?nh f và h theo t?ng pixel
g = f - h;

% c. Cân b?ng m?c xám c?a ?nh g
% ??a giá tr? pixel c?a g vào kho?ng [0, 255]
g_min = min(g(:));
g_max = max(g(:));
i = 255 * (g - g_min) / (g_max - g_min);

% Hi?n th? các ?nh
figure;
subplot(2,2,1), imshow(f), title('Anh f');
subplot(2,2,2), imshow(h),title('Anh h');
subplot(2,2,3), imshow(g),title('Anh g');
subplot(2,2,4), imshow(i), title('Anh i sau khi can bang muc xam');
