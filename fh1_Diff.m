function [ df ] = fh1_Diff( f )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
syms x;
df = str2func(['@(x)',char(diff(f(x)))]);
end

