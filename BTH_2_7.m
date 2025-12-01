clc; clear; close all;

% Danh sach anh can xu ly
imgList = {
    'dataImages\pillsetc.png';
    'dataImages\tape.png';
    'dataImages\coins.png';
    'dataImages\eight.tif'
};

% Thu muc luu ket qua
outDir = 'results_threshold';
if ~exist(outDir,'dir')
    mkdir(outDir);
end

for k = 1:length(imgList)
    imgPath = imgList{k};

    % Lay ten file
    [~, fileName, ext] = fileparts(imgPath);
    fullName = [fileName ext];

    % Doc anh
    I = imread(imgPath);

    % Chuyen sang xam neu la anh mau
    if size(I,3) == 3
        Igray = rgb2gray(I);
    else
        Igray = I;
    end

    figure('Name', ['Xu ly nguong - ' fullName], ...
        'NumberTitle','off','Units','normalized','Position',[0.1 0.1 0.8 0.7]);

    % Anh goc
    subplot(2,3,1);
    imshow(Igray);
    title(['Anh goc: ' fullName], 'Interpreter','none');

    % Histogram
    subplot(2,3,2);
    imhist(Igray);
    title('Histogram muc xam');

    % === Nguong Otsu ===
    level = graythresh(Igray);     % tra ve 0..1
    level_255 = round(level * 255);

    fprintf('Anh: %s  - Nguong Otsu = %.4f (gan %d/255)\n', ...
        fullName, level, level_255);

    % Tao anh nhi phan dung im2bw
    BW_otsu = im2bw(Igray, level);

    subplot(2,3,4);
    imshow(BW_otsu);
    title(['Nhi phan Otsu, nguong = ' num2str(level)]);

    % === Nguong thu cong ===
    m1 = 0.1;
    m2 = 0.3;
    m3 = 0.5;

    BW1 = im2bw(Igray, m1);
    BW2 = im2bw(Igray, m2);
    BW3 = im2bw(Igray, m3);

    subplot(2,3,3);
    imshow(BW1);
    title(['Nguong thu cong = ' num2str(m1)]);

    subplot(2,3,5);
    imshow(BW2);
    title(['Nguong thu cong = ' num2str(m2)]);

    subplot(2,3,6);
    imshow(BW3);
    title(['Nguong thu cong = ' num2str(m3)]);

    % Luu anh ket qua
    outName = fullfile(outDir, [fileName '_binary_otsu.png']);
    imwrite(BW_otsu, outName);

    fprintf('Da luu: %s\n\n', outName);

    pause(0.5);
end

fprintf('Hoan thanh xu ly.\n');
