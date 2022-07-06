clear all;
clc;
I=rgb2gray(imread('红外配准3.bmp'));
h=fspecial('gaussian',5);%?高斯滤波
%I=rgb2gray(I0);
BW1=edge(I,'sobel'); %用Sobel算子进行边缘检测
BW2=edge(I,'roberts');%用Roberts算子进行边缘检测
BW3=edge(I,'prewitt'); %用Prewitt算子进行边缘检测
BW4=edge(I,'log'); %用Log算子进行边缘检测
BW5=edge(I,'canny'); %用Canny算子进行边缘检测
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