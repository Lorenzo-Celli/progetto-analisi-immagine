function [res] = ImExtract(imInput)

    IBP0 = bitget(imInput,1)*(2^0);
    IBP1 = bitget(imInput,2)*(2^1);
    IBP2 = bitget(imInput,3)*(2^2);
    IBP3 = bitget(imInput,4)*(2^3);
    IBP4 = bitget(imInput,5)*(2^4);
    IBP5 = bitget(imInput,6)*(2^5);
    IBP6 = bitget(imInput,7)*(2^6);
    IBP7 = bitget(imInput,8)*(2^7);

    res = uint8(IBP7 +IBP6+ IBP5+ IBP4+IBP3+IBP2+IBP1+IBP0);
    figure, imshow(res);
end

