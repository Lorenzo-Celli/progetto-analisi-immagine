clear; close all; clc,
lena = imread("peppers.png");
figure, imshow(lena)
[n, m, k] = size(lena);
key = keyGen(n,m);
res = encryptionDecryption(lena,key);
decrittata = encryptionDecryption(res,key);
figure, imshow(res);
figure, imshow(decrittata);


%%
peppers = imread("peppers.png");
[a, b, c] = size(peppers);
for i = 1 : c
    tmp = double(peppers(:,:,c));
    pls = dct2(tmp,size(tmp));
    pls(:,:,i) = pls;
end
