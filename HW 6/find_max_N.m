% find_max_N.m
% Patrick Utz, 2/16/18, 6.3

% Problem: Create a MATLAB function named find_max_N to find the 
% largest integer N that satisfies the following inequality, where
% M is the upper bound. The function should take one input argument ? 
% the upper bound value, and output one single output argument - the 
% largest N value. Use the following examples: M=0; 1; 10; 100 and
% 1000 to test your function. Attach the results.


% Variables: N = output the largest integer, M = input the upper bound
% value, intN = place holder for N, total = used to calculate 
% total of the series

function N = find_max_N(M)
% find_max_N calculates the max integer that causes the series to be
% less than the upper bound inputted
% Format of call: find_max_N( desired upper bound )
% Returns the desired integer value
intN = 1;
total = 0;
if M < 1
    fprintf('Please enter an upper bound greater than 1\n');
else
    while round(total) <= M 
        for k = 1:intN
            total = total + (2*k)^2 - ((2*k+1)/(2*k-1));
        end
    intN = intN + 1;
    end
    N = intN - 2;       
end
