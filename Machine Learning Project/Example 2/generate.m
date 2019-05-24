function [x1,x2,y] = generate()

x1 = randn(1000,1);
x2 = randn(1000,1);
y = 3*(x1+0.5*randn(1000,1))+7*(x2+0.5*randn(1000,1))+4+0.5*randn(1000,1);