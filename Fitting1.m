function [ z , str1 , yi ] = Fitting1( sf , x , y , xi )
% [ z , str1 , yi ] = Fitting1( sf , x , y , xi )
% Linear and Nonlinear Fitting
% sf    ---> a cell array contains function handels;
%            Example:
%                  sf = { @(x) sin(x) , @(x) cos(x) }
% x,y   ---> Data points
% xi    ---> new x that we want y in this x datas
% z     ---> coefs of fitted function
% str1  ---> fitted function's display
% yi    ---> f(xi)
% 
% By Hamidreza Sanati Ghazani
% Stu_id : 140051411058
% Tel_id : @hamid_sg
% Email  : hamidrezaghazani1382@gmail.com


h1 = sf;
for j = 1:size(h1,2)
    for i = 1:size(h1,2)
        h2{j,i} = h1{j}(x).*h1{i}(x);
        
    end
    h4{j,1} = h1{j}(x).*y;
end
for i = 1:size(h2,2)
    for j = 1:size(h2,2)
        h3(i,j) = sum(h2{i,j});
    end
    h5(i,1) = sum(h4{i});
end
if h1{1}(x) == 1
    h3(1) = h3(1)*size(x,2);
end
z = inv(h3)*h5;
z = z';
str1 = '';
syms X;
for i =1:size(h1,2)
    if i ~= size(h1,2)
        str1 = [str1,num2str(floor(z(i)*100000)/100000),char(h1{i}(X)),'  + '];
    else
        str1 = [str1,num2str(floor(z(i)*100000)/100000),char(h1{i}(X)),];
    end
end

for i = 1:size(h1,2)
    if size(h1{i}(xi),2) ~= size(xi,2)
        m(i,:) = (h1{i}(xi)*ones(1,size(xi,2)))*z(i);
    else
    m(i,:) = h1{i}(xi)*z(i);
    end
end

yi = sum(m,1);
end

