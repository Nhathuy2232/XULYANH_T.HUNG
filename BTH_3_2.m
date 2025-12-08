% ??c ?nh ??u vào
f = imread('dataImages\Fig1005(a)(wirebond_mask).tif');  

w1 = [-1 -1 -1; 2 2 2; -1 -1 -1];

w2 = [-1 -1 2; -1 2 -1; 2 -1 -1];

w3 = [2 -1 -1; -1 2 -1; -1 -1 2];

w4 = [2 -1 -1; -1 2 -1; -1 -1 2];

% Áp d?ng m?t n? lên ?nh ??u vào
g1 = imfilter(f, w1); 
g2 = imfilter(f, w2);  
g3 = imfilter(f, w3);  
g4 = imfilter(f, w4);
% Hi?n th? k?t qu?
figure;
subplot(2,2,1), imshow(f), title('Anh goc');
subplot(2,2,2), imshow(g1), title('Biên v?i M?t n? 1');
subplot(2,2,3), imshow(g2), title('Biên v?i M?t n? 2');
subplot(2,2,4), imshow(g3), title('Biên v?i M?t n? 3');
subplot(2,2,4), imshow(g4), title('Biên v?i M?t n? 4');

