function [ I , n ] = Newton_Cots3 ( f , a , b , h )
% [ I , n ] = Newton_Cots3( f , a , b , h )
% Newton cots 3 points
% f     ---> function handle
% a,b   ---> Integral bounds
% h     ---> little bounds's length
% I     ---> Integral f from a to b
% n     ---> number of xi between a , b
% 
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com


xi = a:h:b;
I = 0;
for i = 1:size(xi,2)
    if (i == 1) || (i == size(xi,2)) 
        I = I + f(xi(i));
    elseif (mod(i,2)==1)
        I = I + 2*f(xi(i));
    elseif (mod(i,2)==0)
        I = I + 4*f(xi(i));
    end
end
I = I * h / 3;
n = size(xi,2);

end

