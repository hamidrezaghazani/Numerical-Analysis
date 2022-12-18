function [ rt , frt , n ,a1 , b1  ] = Tansif_func2( f , a , dx , Eps )
% [ rt , frt , n ,a1 , b1  ] = Tansif_func2( f , a , dx , Eps )
% f     ---> function handle
% a     ---> root finding range's start point
% dx    ---> step for find new a,b around root
% Eps   ---> the tolerance that determines zero
% rt    ---> x that f(x)=0
% frt   ---> f(rt)
% n     ---> number of repetition in while loop
% a1,b1 ---> new a,b around root
% 
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com




while sign(f(a)) == sign(f(a+dx))
     a = a + dx;
end
a =a; a1 = a;
b = a+dx; b1 = b;
[rt , frt , n ] = Tansif_func1(f,a,b,Eps);

end