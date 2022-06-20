function [res] = toAscii(txt,a,b)
%dove a e b sono le dimensioni dell'immagine

%trasformo il testo in una sequenza di numeri in ascii decimale
asciiTxt = uint8(txt);

%trasformo l'ascii decimale in binario 
asciiTxt = dec2bin(asciiTxt);

%trasformo il tutto in in vettore unidimensionale di 1 e 0 
[x, y] = size(asciiTxt);
sizeTxt = x*y;
asciiTxt = reshape(asciiTxt,1,sizeTxt);
asciiTxt(isspace(asciiTxt)) = []; 
asciiTxt = uint8(asciiTxt(:) == '1');

% distribisco l'array in una maschera delle dimensioni dell'immagine in
% modo da poterla sostiure nel bit plane 
res = zeros(a,b);
res(1:sizeTxt) = asciiTxt(:);
res = uint8(res);
end

