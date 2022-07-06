clc;
clear all
I=imread('IR-5-1-1_.jpg');
I=im2double(I);
I=rgb2gray(I);
[M,N]=size(I);
im_o=zeros(M,N);
im=zeros(M,N);
for x=1:M-1
    for y=1:N-1
        if I(x,y)>0.85  %可以调整
            im(x,y)=0;
        else
            im(x,y)=255;
        end
    end
end
max=0;
for i=1:M
    for j=1:N-1
        if(abs(im(i,j)-im(i,j+1))>0)
            max=abs(im(i,j)-im(i,j+1));
        else
            max=max;
        end
    end
end
for j=1:N
    for i=1:M-1
        if(abs(im(i,j)-im(i+1,j))>0)
            max=abs(im(i,j)-im(i+1,j));
        else
            max=max;
        end
    end
end
if (max>200)
    sigma=max/20;
else if (max<=200 & max>=1)
        sigma=max/10;
    else
        sigma=max/5;
    end
end
for i=2:M-1
    for j=2:N-1
        if ((abs(im(i-1,j)-im(i,j))<sigma) & (abs(im(i+1,j)-im(i,j))<sigma) & (abs(im(i,j-1)-im(i,j))<sigma) & (abs(im(i,j+1)-im(i,j))<sigma))
            im_o(i,j)=100;
        else
            im_o(i,j)=im(i,j);
        end
    end
end
figure

imshow(uint8(im_o))

%imwrite(im_o,'xxx.文件格式')  %保存图像
              
              
              
              