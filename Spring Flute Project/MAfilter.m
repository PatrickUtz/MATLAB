% moving average filter
% Patrick Utz, 3/2/18, 8.3 (originally from Dr. Huang)
% input arguments:  x - the vector to be filtered
%                   n - the order of the filter
% output arguments: y - the filtered vector

function y = MAfilter(x, n)

% using two for loops
% generate the kernel of the filter

f = ones(1,n)/n;
 
% special handling of boundaries:
for k = 1:n-1
    y(k) = sum(x(1:k))/k;
end
% normal elements 
for k = n:length(x)
    xsec = x(k-n+1:k);
    y(k) = sum(f.*xsec);
end
    
    
