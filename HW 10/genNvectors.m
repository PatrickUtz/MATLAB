% genNvectors.m
% Patrick Utz, 3/23/18, 10.1
 
% Problem: Write a MATLAB program genNvectors.m to prompt the user 
% to input a positive integer N, and generate N random vectors, each
% with 10 random numbers uniformly distributed between 0 and 1. Each
% vector will be stored in a variable with a name called ?vector1?,
% ?vector2?, ?vector3?..., ?vectorN?. Your program should perform error 
%     checking for the user input value of N. After testing your program,
% there should be N variables, vector1,..., vectorN. created in your
%     workspace, each with 10 random numbers.

% Variables: N = positive integer inputted by user, expres = expression
% to be evaluated to create the individual variables

clear
N = input('Hello! Please enter a positive integer N: ');
while N < 0 || int32(N) ~= N
N = input('Hello! Please enter a positive integer N: ');
end

for k = 1:N
    expres = sprintf('vector%d = (1-0)*rand(1,10)+0',k);
    eval(expres);
end
