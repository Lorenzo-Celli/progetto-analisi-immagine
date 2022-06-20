%% prova text hiding
clc, clear; close all;

txt = 'Lorem ipsum dolor sit amet';
barbara = imread("Barbara.bmp");

hide = TxtHide(barbara,txt);

figure, imshow(hide);

messaggio = TxtExtract(hide);

%% prova img hiding
clc, close all; clear;

lena = imread("Lena.bmp");
barbara = imread("Barbara.bmp");

hide = ImHide(lena,barbara);

figure, imshow(hide);

newBarbara= uint8(ImExtract(hide));

figure, imshow(newBarbara);

psnr = psnr(barbara,newBarbara);