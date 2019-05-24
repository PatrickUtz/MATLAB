% medianFilter.m
% Patrick Utz, 3/2/18, 8.3
 
% input arguments:  rawVec - the vector to be filtered
%                   M - the order of the filter
% output arguments: filteredVec - the filtered vector

function filteredVec = medianFilter(rawVec, M)
 
medVec = [];
for k = 1:length(rawVec)
    if ( k - round((M-1)/2) ) < 1 || ( k + round((M-1)/2) ) > length(rawVec) 
        filteredVec(k) = rawVec(k);
    else
        medVec = rawVec( (k - round((M-1)/2)):(k + round((M-1)/2)) );
        filteredVec(k) = median(medVec);
    end
end
end