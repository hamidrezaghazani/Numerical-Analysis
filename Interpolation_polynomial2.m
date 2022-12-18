function [ coefs , ny ] = Interpolation_polynomial2( x , y , nx )
% [ coefs , ny ] = Interpolation_polynomial2( xi , yi , nx )
% Lagrange rule
% xi,yi ---> Data points
% nx    ---> new x that we want y in this x datas
% coefs ---> the coefs of polynomial that interpolated
% ny    ---> f(nx)
% 
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com



n = [1];
m = zeros(size(x,2));
for j = 1:size(x,2)
    n = 1;
    for i = 1:(size(x,2))
        if i==j
            continue;
        end
        n = conv(n,[1,-x(i)]);
    end
    m(j,(size(x,2)-size(n,2)+1):end) = n;
end
for j = 1:size(x,2)
    n = 1;
    for i = 1:(size(x,2))
        if i==j
            continue;
        end
        n = n*(x(j)-x(i));
    end
    m2(j) = n;
end

for i = 1:size(m,1)
    m(i,:)=m(i,:)/m2(i)*y(i);
end
coefs = sum(m,1);
ny = polyval(coefs,nx);

end

