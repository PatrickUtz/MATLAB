% approx_inv_e.m
% Patrick Utz, 2/16/18, 6.2

% Problem: Create a MATLAB function named approx_inv_e to 
% find the minimum positive integer n needed for the approximated 
% value to have a specified accuracy. The function should have one 
% input argument as the maximum tolerable difference between the real
% value of 1/e and its approximation, and the output argument is the 
% minimum value of n required for achieving the required accuracy. 
% Your function should still print the approximated value and the actual
% value, but not the number n, which is returned in the output argument. 
% Test your function using 0.1, 0.01 and 0.001 as the input argument, 
% respectively, and attach your results

% Variables: minInt = the test variable for the minimum integer that 
% returns the desired accuracy, n = the output minimum integer 
% of the function maxDiff = the input argument specifying
% the max difference desired, approx = the approximated value, actual =
% the actual value

function n = approx_inv_e(maxDiff)
% approx_inv_e calculates the minimum integer that yields an approximate
% value of 1/e within a certain tolerable difference
% Format of call: approx_inv_e( desired tolerable difference )
% Returns the desired integer value
minInt = 1;
while ( ((1/exp(1)) - (1-(1/minInt))^minInt) ) > maxDiff  
    minInt = minInt + 1;
end
n = minInt - 1;
approx = (1-(1/n))^n;
actual = (1/exp(1));
fprintf('The approximated value is %f and the actual value is %f\n', approx, actual)