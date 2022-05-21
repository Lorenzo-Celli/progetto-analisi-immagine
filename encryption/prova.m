clear; close all; clc,
lena = imread("Lena.bmp");
figure, imshow(lena)
[n, m, k] = size(lena);
key = keyGen(n,m);
res = encryptionDecryption(lena,key);
decrittata = encryptionDecryption(res,key);
figure, imshow(res);
figure, imshow(decrittata);