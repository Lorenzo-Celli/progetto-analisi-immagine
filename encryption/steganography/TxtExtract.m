function [res] = TxtExtract(I)
    mask = bitget(I,1);
    ibitsTmp = getMessage(mask);
    ires2 = dec2bin(ibitsTmp);
    ires2= rot90(ires2);
    % divis 7 funziona perché asci ha 7 binari
    sizeDtxt = size(ires2,2)/7;
    res3 = reshape(ires2,sizeDtxt,7);
    itmp = bin2dec(res3);
    istr = char(itmp);
    res = rot90(istr);
end

