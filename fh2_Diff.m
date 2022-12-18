function [ df ] = fh2_Diff( f , t )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms x y;
if t == 1
    df = str2func(['@(x,y)',char(diff(f(x,y),x))]);
elseif t == 2
    df = str2func(['@(x,y)',char(diff(f(x,y),y))]);
end

end

