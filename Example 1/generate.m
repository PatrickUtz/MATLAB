function [x,y] = generate()

x = randn(1000,1);
y = 3*(x+0.5*randn(1000,1))+(7+0.5*randn(1000,1));
