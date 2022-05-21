function [res] = encryptionDecryption(ImgInp,key)


[alt, lung, z] = size(ImgInp);

%pre-alloco le variabili per ottimizzare 
proImage = uint8(ones(alt,lung));
res = uint8(ones(alt,lung));
mask = uint8(ones(alt,lung));

%trasformo il vettore chiave in una matrice maschera di dimensioni pari all'immagine
for ind = 1 : lung   
    % viene creata una nuova matrice maschera che ha come valori
    % colonna per colonna i valori della chiave, a blocchi di 512
    mask(:,ind) = key((1+(ind-1)*alt) : (((ind-1)*alt)+alt));
end

%itero su x y e z dell'immagine
for i = 1 : z
    Img = ImgInp(:,:,i);
    for j = 1 : alt
        for k = 1 : lung
            %faccio uno xor bitwise tra la maschera e l'immagine originaria
            %per crittare o decrittare l'immagine.
            proImage(j,k) = bitxor(Img(j,k),mask(j,k));  
        end
    end
    res(:,:,z) = proImage(:,:,1);
end
return;




