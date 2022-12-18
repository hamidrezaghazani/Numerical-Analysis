function [ coefs , ny ] = Interpolation_polynomial1( xi , yi , nx )
% [ coefs , ny ] = Interpolation_polynomial1( xi , yi , nx )
% Equation systems
% xi,yi ---> Data points
% nx    ---> new x that we want y in this x datas
% coefs ---> the coefs of polynomial that interpolated
% ny    ---> f(nx)
% 
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com



if size(xi,2)~=size(yi,2)
    error('errortests:converttest','Error code: 05102\nSize of xi & yi must be same!')
end
n1 = size(xi,2);
for j = 1:n1
    for i = 1:n1
        a(j,i) = xi(j)^(n1-i);
    end
end
b = yi';
c = inv(a)*b;
coefs = c;

ny = polyval(c,nx);

end

