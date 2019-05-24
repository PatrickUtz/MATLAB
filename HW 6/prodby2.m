% prodby2.m
% Patrick Utz, 2/16/18, 6.1

% Problem: Write a function prodby2 that will receive 
% a value of a positive integer n and will calculate and 
% return the product of the odd integers from 1 to n (or from 
% 1 to n?1 if n is even). Use a for loop. Test your function by
% calling it using the following values of n: 1, 2, 3, 9, 10,
% respectively. Attach your results.

% Variables: product = the outcome of the function, intVec = the vector 
% created using n integers, k = used for reference in the for loop

function product = prodby2(n)
% prodby2 calculates the product of 
% Format of call: prodby2( number of integers )
% Returns product of all odd numbers in vector
product = 1;
intVec = 1:n;
if n < 1
    fprintf('Invalid value. Please enter an integer.')
elseif rem(numel(n),2) == 0
    for k = 1:2:n-1
        product = product*intVec(k);
    end
else
    for k = 1:2:n
        product = product*intVec(k);
    end
end