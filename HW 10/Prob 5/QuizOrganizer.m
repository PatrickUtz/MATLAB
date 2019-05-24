% QuizOrganizer.m
% Patrick Utz, 3/23/18, 10.5
 
% Problem: Create and run a MATLAB program to solve exercise 21 of 
% Chapter 8. Write a function to create the data file named studentinfo.dat.
% You can use the examples in the book as the contents in the data file, 
% or create your own one.
% Variables: row = length of row of structure, column = length of column
% of structure, studentinfo matrix with raw info, studentInfoVec =
% structure of student info 

clear

CreateStudentInfo();
load studentinfo.dat;
[row, column] = size(studentinfo);
for k = 1:row
    studentinfo(k,1) = int32(studentinfo(k,1));
end

for i = 1:row    
    studentInfoVec(i) = struct('id_no',studentinfo(i,1),'quiz',studentinfo(i,2:end));
end

for j = 1:row
    fprintf('Student %d average: %f\n', studentInfoVec(j).id_no,(sum([studentInfoVec(j).quiz]))/(column-1));
end