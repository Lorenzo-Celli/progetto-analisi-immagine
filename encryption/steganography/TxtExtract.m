function [res] = TxtExtract(I)
    
    % estraggo il bit plane meno significativo contenente il messaggio da
    % estrarre
    mask = bitget(I,1);

    %estraggo il messaggio
    [a, b] = size(I);
    msg = getMessage(mask,a,b);
    
    % riporto il messaggio alla sua forma originale ovvero una stringa di
    % caratteri
    msg = dec2bin(msg);
    msg= rot90(msg);
    % faccio diviso 7 poichè i caratteri ascii hanno questa grandezza
    sizeDtxt = size(msg,2)/7;
    msg = reshape(msg,sizeDtxt,7);
    msg = bin2dec(msg);
    %rimuovo l'1 inserito nell'encoding
    msg(end) = [];
    msg = char(msg);
    res = rot90(msg);
    
end

