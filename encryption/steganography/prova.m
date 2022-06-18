%% prova text hiding
clc, clear; close all;

str = 'Lorem ipsum dolor sit amet1';
barbara = imread("Barbara.bmp");

res = TxtHide(barbara,str);

testoh = TxtExtract(res);

%% prova img hiding
clc, close all; clear;

lena = imread("Lena.bmp");
barbara = imread("Barbara.bmp");

res = ImHide(lena,barbara);
barb = uint8(ImExtract(res));
 psnr = psnr(barbara,barb);