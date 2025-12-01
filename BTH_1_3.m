I = imread('dataImages\cameraman.tif');

% ghi anh duoi dang JPEG va PNG
imwrite(I, 'Ijpg.jpg', 'jpg');
imwrite(I, 'Ipng.png', 'png');

% doc lai anh duoi dang JPEG va PNG
Ijpg = imread('Ijpg.jpg');
Ipng = imread('Ipng.png');

% so sanh su khac biet giua 2 anh
X = imabsdiff(Ijpg, Ipng);

% hien thi su khac biet
figure;
subplot(1, 3, 1), imshow(Ijpg), title('Anh JPEG');
subplot(1, 3, 2), imshow(Ipng), title('Anh PNG');
subplot(1, 3, 3), imagesc(X), colorbar, title('Su khac biet JPEG va PNG');

