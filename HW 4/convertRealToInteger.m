% This script reads a matrix of real numbers in column wise order
% and outputs a matrix of integers in row wise order

clear
load realnums.dat;
realnums 
roundnums = round(realnums);
roundnums
intnums = roundnums';
intnums
save intnums.dat intnums -ascii
type intnums.dat