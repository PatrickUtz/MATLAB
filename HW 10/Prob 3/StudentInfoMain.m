% StudentInfoMain.m
% Patrick Utz, 3/23/18, 10.3
 
% Problem: Write a MATLAB program that will call the following two
% functions.
% 1) EnterStudentInfo.m: this function takes a positive integer N as the 
% input arguments, and return a single output argument, which is a cell 
% array that stores the names, student IDs and GPAs for a total of N 
% students. The function should prompt the user to input appropriate 
% information interactively. An example is illustrated below.
% >> students = EnterStudentInfo(2)
% Please enter the name of student No. 1: John
% Please enter the student ID for John: 1234
% Please enter the GPA for John: 4.0
% Please enter the name of student No. 2: Mary
% Please enter the student ID for Mary: 5678
% Please enter the GPA for Mary: 5.0
% The result of the above testing should result in the following
% variable: >> students
% students =
% 2×3 cell array
% 'John' [1234] [4] 'Mary' [5678] [5]
% 2) PrintStudentInfo.m: this function takes one single input argument 
%     with all the above mentioned student information, and print in a 
%     table format with a heading line as shown below.
% >> PrintStudentInfo(students)
% Student Name John
% Mary
% Student ID GPA 1234 4.00 5678 5.00

% Variables: students = student cellArray

clear

students = EnterStudentInfo(2);
PrintStudentInfo( students );
