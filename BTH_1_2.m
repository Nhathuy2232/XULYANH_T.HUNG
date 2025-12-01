I = imread('dataImages\cell.tif');
% Kich thuoc cua anh
[rows, cols] = size(I);

% khoi tao anh I1 va I2
I1 = I;
I2 = I;

% Lap qua tungpixel trong anh
for i = 1:rows
    for j = 1:cols
        % Cong 25 vao pixel
        I1(i,j) = min(max(I(i,j) + 25, 0), 255);

        % Tru 25 vao pixel
        I2(i,j) = min(max(I(i,j) - 25, 0), 255);
    end
end

% Hinh anh ket qua
figure;
subplot(1,3,1), imshow(I), title('Anh goc');
subplot(1,3,2), imshow(I1), title('Anh sau khi cong 25');
subplot(1,3,3), imshow(I2), title('Anh sau khi tru 25');
