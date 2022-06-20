function [res] = getMessage(mask,a,b)
% vengono estratti tutti i bit del messaggio nella maschera a partire
% dall'1 inserito nell'encoding 

isMessage = 0;
cont = 1;
mask = rot90(mask);
mask = fliplr(mask);
    for i = 1:a
        for j = 1:b
            if mask(i,j) == 1
                isMessage = 1;
            end
            if isMessage == 1
                res(1,cont) = mask(i,j);
                cont = cont+1;
            end
        end
    end
    res = uint8(fliplr(res));
end

