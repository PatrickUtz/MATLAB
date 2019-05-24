% geomser.m
% Patrick Utz, 2/23/18, 7.2
 
% Problem: Create a MATLAB function called ?geomser? to calculate the 
% sum of the following geometric sequence.1+r+r2 +r3 +r4 +...+rn
% Your function should receive two input arguments, r and n, where 
% r is a real number, and n is a positive integer. Your function should 
% return the sum as the output argument if the inputs are valid.
% Otherwise, it should return a 0. Use the following input values to
% test your function. Attach your results.(1)r=1,n=5;(2)r=0.5,n=9;(3)
% r=0.3,n=9.5;(4)r=2,n=-5
 
% Variables: total = output sum of function, r = real number r for 
% series, n = positive integer for exponent of series, tempArray = 
% temporary array used to find the series array 
 
function total = geomser(r,n)
% geomser calculates the sum of the series with respect to the given r 
% a and n values
% Format of call: geomser( real number r, positive integer n )
% Returns the sum of the series or 0 if an invalid value is inputted

if isreal(r) && (n >= 1 && rem(n,1) == 0)
    tempArray = r.^(0:n);
    total = sum(tempArray);
else
    total = 0;
end