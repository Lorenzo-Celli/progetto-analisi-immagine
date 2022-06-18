function [res] = TxtHide(ImInput,txt)
    
    [a, b] = size(ImInput);
    
    asciiTxt = toAscii(txt,a,b);

    IBP1 = bitget(ImInput,2)*(2^1);
    IBP2 = bitget(ImInput,3)*(2^2);
    IBP3 = bitget(ImInput,4)*(2^3);
    IBP4 = bitget(ImInput,5)*(2^4);
    IBP5 = bitget(ImInput,6)*(2^5);
    IBP6 = bitget(ImInput,7)*(2^6);
    IBP7 = bitget(ImInput,8)*(2^7);
    
    res = IBP7 + IBP6 + IBP5 + IBP4 + IBP3 + IBP2 + IBP1 + asciiTxt;

    figure, imshow (res);

end

