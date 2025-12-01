%V? l??c ?? xám ?nh I
I=imread('dataImages\coins.png');  
subplot(1,2,1), imshow(I);  
subplot(1,2,2), imhist(I); 
%??m s? m?c xám 
%truy v?n giá tr? xám 60
I=imread('dataImages\coins.png');  
[counts,bins]=imhist(I); 
counts(60)  
 