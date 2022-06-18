function [res] = getMessage(mask)
tmp = 0;
cont = 1;
mask = rot90(mask);
mask = fliplr(mask);
    for i = 1:512
        for j = 1:512
            if mask(i,j) == 1
                tmp = 1;
            end
            if tmp == 1
                res(1,cont) = mask(i,j);
                cont = cont+1;
            end
        end
    end
    res = uint8(fliplr(res));
end

