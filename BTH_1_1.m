I = imread('dataImages\cell.tif');
figure;
subplot(1, 3, 1);

imshow(I);
title('ANH GOC');

% Truy xu?t giá tr? pixel t?i v? trí (100,20)
i = 100;
j = 20;
pixel_value = I(i,j); % giá tr? pixel t?i v? trí (100,20)
disp(['Gia tri pixel tai vi tri (100,20) ban dau la: ', num2str(pixel_value)]);

% Th?c hi?n phép toán c?ng và tr?
Cong = I;
Tru = I;

% C?ng 50 vào giá tr? pixel t?i (100, 20)
Cong(i,j) = Cong(i,j) + 25;

% Tr? 50 vào giá tr? pixel t?i (100, 20)
Tru(i,j) = Tru(i,j) - 25;

% Hi?n th? ?nh sau khi thay ??i
figure;
subplot(1,3,1), imshow(I), title('Anh goc');
subplot(1,3,2), imshow(Cong), title('Anh sau khi cong 25');
subplot(1,3,3), imshow(Tru), title('Anh goc khi tru 25');



