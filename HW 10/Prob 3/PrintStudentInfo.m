% PrintStudentInfo.m
% Patrick Utz, 3/23/18, 10.3

function PrintStudentInfo(students)
% PrintStudentInfo takes one single input argument of the student 
% information, and prints it all in a table format 
% Format of call: PrintStudentInfo( cell array of student info )
% Returns student info in table format

fprintf('Student Name \t Student ID \t GPA\n')
[row,columns] = size(students);
for k = 1:row
fprintf('\t%s\t\t%d \t %#1.2f \n', students{k,1}, students{k,2}, students{k,3})
end