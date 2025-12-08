% ??c ?nh ??u vào
f = imread('dataImages\Fig1016(a)(building_original).tif');  

% Phát hi?n biên v?i Sobel
[g_sobel, t_sobel] = edge(f, 'sobel', 'vertical');  % Biên d?c
[g_sobel_h, t_sobel_h] = edge(f, 'sobel', 'horizontal');  % Biên ngang

% Phát hi?n biên v?i Prewitt
[g_prewitt, t_prewitt] = edge(f, 'prewitt', 'vertical');  % Biên d?c
[g_prewitt_h, t_prewitt_h] = edge(f, 'prewitt', 'horizontal');  % Biên ngang

% Phát hi?n biên v?i Roberts
[g_roberts, t_roberts] = edge(f, 'roberts', 'vertical');  % Biên d?c
[g_roberts_h, t_roberts_h] = edge(f, 'roberts', 'horizontal');  % Biên ngang

% Hi?n th? k?t qu?
figure;
subplot(2,3,1), imshow(f), title('Anh goc');
subplot(2,3,2), imshow(g_sobel), title('Biên Sobel (d?c)');
subplot(2,3,3), imshow(g_sobel_h), title('Biên Sobel (ngang)');
subplot(2,3,4), imshow(g_prewitt), title('Biên Prewitt (d?c)');
subplot(2,3,5), imshow(g_prewitt_h), title('Biên Prewitt (ngang)');
subplot(2,3,6), imshow(g_roberts), title('Biên Roberts (d?c)');
