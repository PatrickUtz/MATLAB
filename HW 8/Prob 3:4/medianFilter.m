% medianFilter.m
% Patrick Utz, 3/2/18, 8.3
 
% Problem: Write a MATLAB function to implement the median filter. 
% This function should take two input arguments, one is the vector to 
% be filtered, and the other one is an odd integer M as the order of the
% filter. It should output the resulting median-filtered vector. Run and
% test your function with the above x and M=3, attach your results.

% Variables: medVec = temp vector to store the neighboring values to
% be analyzed, rawVec = unfiltered input vector, filteredVec = output
% filtered vector, M = order of the filter

function filteredVec = medianFilter(rawVec, M)
% medianFilter prompts the user to input the vector to be filtered, and 
% the odd integer M as the order of the filter 
% Format of call: medianFilter(vector to be filtered, odd integer M as the
% order of the filter)
% Returns the resulting median-filtered vector
 
medVec = [];
for k = 1:length(rawVec)
    if ( k - ((M-1)/2) ) < 1 || ( k + ((M-1)/2) ) > length(rawVec)
        filteredVec(k) = rawVec(k);
    else
        medVec = rawVec( (k - ((M-1)/2)):(k + ((M-1)/2)) );
        filteredVec(k) = median(medVec);
    end
end
end