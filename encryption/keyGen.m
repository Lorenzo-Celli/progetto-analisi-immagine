function [key] = keyGen(n,m)

      key = randi([1 255],n*m,1,'uint8');

end

