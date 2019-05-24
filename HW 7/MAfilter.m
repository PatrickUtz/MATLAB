% MAfilter.m
% Patrick Utz, 2/23/18, 7.4
 
% Problem: A moving-average filter is a basic digital signal 
% processing tool to remove noise. Assume x is a vector of measured
% data samples with random noises, we can estimate the real data 
% samples as a vector y as follows,
% 
% That is, every sample in y is an M-point average over the last M-1 
% samples and the current sample in x. This is called an M-th order
% moving-average filter. For the first M-1 samples, we only average 
% from the first element in x up to the current value. Create a Matlab 
% function named MAfilter to implement the M-th order moving average filter,
% the input argument should be a vector x and a filter order M, and the
% output should be the filtered vector y, with exactly same number of 
% samples as in x. Use the following input to test your function. Attach 
% your results.
% (1) x=[1,2,3,4,5]; M = 2;
% (2) x=[1,2.1,2.9,4.3,4.8];M=3;
% Note: You can NOT use any built-in filter functions in Matlab.
 
% Variables: y = output of filter in array form, x = input array,
% M = inputted filter order, n = reference for for loop

function y = MAfilter(x, M)
% MAfilter calculates the filtered array of x  
% Format of call: MAfilter( input array x, filter order M )
% Returns the filtered array of x  

for n = 1:length(x)
    y(n) = 0;
    for l = 0:(M-1)
        if (n-l) > 0
        y(n) = y(n) + x(n-l);
        else
            break;
        end
    end
    y(n) = (y(n)) * (1/M);
end