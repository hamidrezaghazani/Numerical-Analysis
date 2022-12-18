function [ root , froot , n ] = Newton_Rap1( f , x , Eps )
% [ root , froot , n ] = Newton_Rap1( f , x , Eps )
% Newton Rapsone 1 function
% f     ---> function handle
% x     ---> root finding start point
% Eps   ---> the tolerance that determines zero
% root  ---> x that f(x)=0
% froot ---> f(root)
% n     ---> number of repetition in while loop
% 
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com


df = fh1_Diff(f);
n = 0;
while (1)
    n = n+1;
    xo = x;
    x = x - f(x)/df(x);
    if abs(f(x))< Eps
        break;
    end
end

root = x;
froot = f(x);

end

