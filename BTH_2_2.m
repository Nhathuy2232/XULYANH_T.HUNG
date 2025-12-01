% 2.2 Bit-plane 
i = imread('dataImages\Fig0122(a)(fractal-iris).tif');

% (a) Bit-plane th? 3
i3 = bitget(i,3);
figure, imshow(i3,[]); title('Bit plane 3');

% (b) Bit-plane th? 6
i6 = bitget(i,6);
figure, imshow(i6,[]); title('Bit plane 6');

% (c) Bit plane 7 và 8
i78 = zeros(size(i));
i78 = bitset(i78,7,bitget(i,7));
i78 = bitset(i78,8,bitget(i,8));
figure, imshow(i78,[]); title('Bit plane 7 + 8');
