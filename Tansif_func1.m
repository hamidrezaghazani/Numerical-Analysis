function [ root , froot , n ] = Tansif_func1( f , a , b , Eps )
% [ root , froot , n ] = Tansif_func1( f , a , b , Eps )
% f     ---> function handle
% a,b   ---> root finding range
% Eps   ---> the tolerance that determines zero
% root  ---> x that f(x)=0
% froot ---> f(root)
% n     ---> number of repetition in while loop
% 
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com


n= 0;
c = (a + b)/2;
while(abs(f(c))>Eps)
    if f(c)*f(a) < 0
        b = c;
        c = (a+b)/2;
    else 
        a = c;
        c = (a+b)/2;
    end
    n = n + 1;
end
root = c;
froot = f(c);
n = n;
end

