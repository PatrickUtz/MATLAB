% EnterStudentInfo.m
% Patrick Utz, 3/23/18, 10.3

function students = EnterStudentInfo(N)
% EnterStudentInfo takes a positive integer N as the input arguments,
% and returns a single output argument, which is a cell array that stores
% the names, student IDs and GPAs for a total of N students. The function 
% prompts the user to input appropriate information interactively. 
% Format of call: EnterStudentInfo( positive N integer of # students )
% Returns the cell array 

students = cell(N,3);
for k = 1:N 
    namePrompt = sprintf('Please enter the name of student No. %d: ',k);
    students(k,1) = { input(namePrompt, 's') };
    ID_Prompt = sprintf('Please enter the student ID for %s: ', students{k,1});
    students(k,2) = { input(ID_Prompt) };
    GPA_Prompt = sprintf('Please enter the GPA for %s: ', students{k,1});
    students(k,3) = { input(GPA_Prompt) };
end