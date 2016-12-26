%ce programme permet d'extraction de countour
%de touts les images dans le repertoire de ce script
clear all
close all
clc
photo=ls('*jpg');
m=size(photo,1);
dir=cd;
for i=3:m
    if strcmp(photo(i,:),'cartoon.m')
        i=i+1;
    end
    im=imread([dir,'\',photo(i,:)]);
    [v1,v2,v3]=size(im);
    im2=zeros(v1,v2,v3);
    for j=1:3
        im2(:,:,j)=(edge(im(:,:,j),'canny'));    %countoures en blache 
		%im2(:,:,j)=255-(edge(im(:,:,j),'canny'));    %countoures en noire 
    end
    imwrite(mat2gray(im2),[dir,'\','cartoon','\',photo(i,:)],'jpg');
    clc
    disp([num2str(i),':',num2str(m)])
end
