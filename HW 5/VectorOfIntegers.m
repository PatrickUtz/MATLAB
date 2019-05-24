% VectorOfIntegers.m
% Patrick Utz, 2/9/18, 5.1

% Problem: Write a MATLAB script file to create and return a vector of 
% integers from m to n (where m is the first input argument and n is the
% second), regardless of whether m is less than n or greater than n. If
% m is equal to n, the ?vector? will just be 1 x 1 or a scalar. Test your 
% program using three different cases, m>n, m<n and m=n, respectively. 
% Attach the results.
% 
% Variables: m = first integer of the vector, n = last integer of the 
% vector, intVector = vector created using m and n

% Algorithm: 
% input m as starting value and n as ending value
% check to see if m > n, or m < n or m = n  
% output the appropriate vector  
% stop
      
clear
m = input('Please enter the first integer of the vector: ');
n = input('Please enter the last integer of the vector: ');

if m > n
    intVector = m:-1:n;
    disp(intVector)
elseif m < n
    intVector = m:1:n;
    disp(intVector)
else 
    intVector = m
    fprintf('%d',intVector)
end

