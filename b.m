clear all;
clc;
I=rgb2gray(imread('������׼3.bmp'));
h=fspecial('gaussian',5);%?��˹�˲�
%I=rgb2gray(I0);
BW1=edge(I,'sobel'); %��Sobel���ӽ��б�Ե���
BW2=edge(I,'roberts');%��Roberts���ӽ��б�Ե���
BW3=edge(I,'prewitt'); %��Prewitt���ӽ��б�Ե���
BW4=edge(I,'log'); %��Log���ӽ��б�Ե���
BW5=edge(I,'canny'); %��Canny���ӽ��б�Ե���
BW6=edge(I,'canny');
subplot(2,3,1), imshow(BW1);
%imwrite(BW1,'1-1.bmp');
title('sobel edge check');
subplot(2,3,2), imshow(BW2);
%imwrite(BW2,'1-2.bmp');
title('roberts edge check');
subplot(2,3,3), imshow(BW3);
%imwrite(BW3,'1-3.bmp');
title('prewitt edge check');
subplot(2,3,4), imshow(BW4);
%imwrite(BW4,'1-4.bmp');
title('log edge check');
subplot(2,3,5), imshow(BW5);
%imwrite(BW5,'1-5.bmp');
title('canny edge check');
subplot(2,3,6), imshow(BW6);
%imwrite(BW6,'1-6.bmp');
title('gasussian&canny edge check');