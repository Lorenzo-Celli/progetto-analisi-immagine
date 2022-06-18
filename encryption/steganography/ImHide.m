function [res] = ImHide(imInput,imHide)
    
    imInput = im2uint16(imInput);

    IBP8 = bitget(imInput,1)*(2^8);
    IBP9 = bitget(imInput,2)*(2^9); 
    IBP10 = bitget(imInput,3)*(2^10);
    IBP11 = bitget(imInput,4)*(2^11);
    IBP12 = bitget(imInput,5)*(2^12);
    IBP13 = bitget(imInput,6)*(2^13);
    IBP14 = bitget(imInput,7)*(2^14);
    IBP15 = bitget(imInput,8)*(2^15);


    HBP0 = uint16(bitget(imHide,1)*(2^0));
    HBP1 = uint16(bitget(imHide,2)*(2^1));
    HBP2 = uint16(bitget(imHide,3)*(2^2));
    HBP3 = uint16(bitget(imHide,4)*(2^3));
    HBP4 = uint16(bitget(imHide,5)*(2^4));
    HBP5 = uint16(bitget(imHide,6)*(2^5));
    HBP6 = uint16(bitget(imHide,7)*(2^6));
    HBP7 = uint16(bitget(imHide,8)*(2^7));

    res  = IBP15+IBP14+IBP13+IBP12+IBP11+IBP10+IBP9 ...
             +IBP8+HBP7+HBP6+HBP5+HBP4+HBP3+HBP2+HBP1+HBP0;
    
    figure, imshow(res);

end

