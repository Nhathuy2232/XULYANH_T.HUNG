%1
A=imread('dataImages\cameraman.tif ');  
subplot(1,2,1), imshow(A);  
B=imadd(A, 100);  
subplot(1,2,2), imshow(B); 

%2
A=imread('dataImages\cola1.png'); 
B=imread('dataImages\cola2.png'); 
subplot(1,3,1), imshow(A);  
subplot(1,3,2), imshow(B);  
Output = imsubtract(A, B); 
subplot(1,3,3),imshow(Output); 
 
Output1 = imabsdiff(A, B);  
subplot(1,3,3),imshow(Output1); 
%3
Output = immultiply(A,1.5);  
subplot(1,3,3), imshow(Output);  
Output = imdivide(A,4);  
subplot(1,3,3), imshow(Output); 

%4
A=imread('dataImages\toycars1.png');  
B=imread('dataImages\toycars2.png');  
Abw=im2bw(A);  Bbw=im2bw(B);  
subplot(1,3,1), imshow(Abw);  
subplot(1,3,2), imshow(Bbw);  
Output = xor(Abw, Bbw);  
subplot(1,3,3), imshow(Output); 
%5
I=imread('dataImages\trees.tif'); 
T=im2bw(I, 0.1);  
subplot(1,3,1), imshow(I);  
subplot(1,3,2), imshow(T); 


