% ismagic.m
% Patrick Utz, 2/16/18, 6.4

% Problem: A magic matrix is a square matrix (with N rows and
% N columns) constructed from the integers 1 through N^2, and the 
% sums along each row, each column, and the two diagonal lines 
% are all equal. Write a MATLAB function called ismagic 
% that accepts a square matrix as input and determine if this
% matrix is magic. Its output is ?0? (logic false) if the matrix
% is not a magic matrix; and ?1? (logic true) if it is a magic matrix.

% Variables: result = logical value of whether the matrix is magic
% or not, sqMatrix = input square matrix, N = length of the matrix,
% size = size of the matrix, notSquare = temp value to check if 
% it is not a square matrix, sumCheck = matrix that holds sums of the 
% columns and rows and diaganols, totalCol = temp total variable for 
% the summing loop, offset = used to offset index of matrix storing
% summed values, diag = identity matrix to text diaganols, copy =
% copy of sumCheck, check1 = final reference matrix to check if 
% the matrix is magic

function result = ismagic(sqMatrix)
% ismagic calculates whether the inputted square matrix is magic
% or not
% Format of call: ismagic( square matrix )
% Returns a logical false if matrix is not magic and logical true 
% if it is

N = length(sqMatrix);
size = numel(sqMatrix);
notSquare = 0;
sumCheck = [];
totalCol = 0;
for k = 1:size 
    if sqMatrix(k) > N^2 
        notSquare = 1;
    end
end
if notSquare ~= 0
    result = logical(0);
else
    for i = 1:N
        for j = 1:N
        totalCol = totalCol + sqMatrix(i,j);
        end
        sumCheck(i) = totalCol;
        totalCol = 0;
    end
    offset = length(sumCheck);
    for i = 1:N
        for j = 1:N
        totalCol = totalCol + sqMatrix(j,i);
        end
        sumCheck(offset + i) = totalCol;
        totalCol = 0;
    end
    offset2 = length(sumCheck);
    diag = eye(N,N);
    sumCheck(offset2 + 1) = sum(sum(sqMatrix.*diag));
    sumCheck(offset2 + 2) = sum(sum(sqMatrix.*flip(diag)));
    
    sameTester = sumCheck(1);
    copy = sumCheck;
    check1 = copy - sameTester;
    if (check1 | 0) == 0
        result = logical(1);
    else
        result = logical(0);
    end
end