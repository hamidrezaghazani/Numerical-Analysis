function [ xr , yr , fxy , gxy , n ] = Newton_Rap2( f , g , x , y , Eps )
% [ xr , yr , fxy , gxy , n ] = Newton_Rap2( f , g , x , y , Eps )
% f,g     ---> Two function handles that { f(x,y)=0 , g(x,y)=0 }
% x,y     ---> intial cases
% Eps     ---> the tolerance that determines zero
% xr,yr   ---> f(xr,yr)=0 , g(xr,yr)=0
% fxy,gxy ---> f(xr,yr) , g(xr,yr)
% n       ---> number of repetition in while loop
% 
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com






dfx = fh2_Diff(f,1);
dfy = fh2_Diff(f,2);
dgx = fh2_Diff(g,1);
dgy = fh2_Diff(g,2);
n=0;
while 1
    n = n+1;
    a = [dfx(x,y),dfy(x,y);dgx(x,y),dgy(x,y)];
    b = [f(x,y);g(x,y)];
    aa = -inv(a)*b;
    h = aa(1); k = aa(2);
    aa = [x;y]+[h;k];
    x = aa(1); y = aa(2);
    if (abs(f(x,y))<Eps && abs(g(x,y))<Eps)
        break;
    end
end
xr = x;
yr = y;
fxy = f(x,y);
gxy = g(x,y);

end

