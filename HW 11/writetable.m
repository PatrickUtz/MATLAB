% writetable.m
% Patrick Utz, 4/23/18, 11.1
 
% Variables: tempX = used for indexing; 


function writetable(variable,fileName)
% writetable takes two input arguments, the first one is the variable 
% name where the viable donors? information are stored, and the second 
% one is a filename of the text file where the viable donor?s information
% is stored.
% Format of call: writetable( variable name, file name  )
% Stores the viable donor?s information in a text file
first = "First Name";
last  = "Last Name";
type  = "Bloodtype";
rh    = "RH";
sys   = "Systolic";
dia   = "Diastolic";
fid1 = fopen(fileName,'w'); 
if fid1 == -1
    disp('File open not successful: viabledonors.dat') 
else
    disp('File opened successfully: viabledonors.dat')
%     title = 'First name  Last name  Bloodtype RH Systolic Diastolic';
    fprintf(fid1,'%s \t\t%s \t%s \t%s \t%s \t%s \n', first, last, type, rh, sys, dia);
    for i = 1:length(variable)
        temp1 = variable{1,i};
        fprintf(fid1,'%-s   \t\t%-s \t\t\t%+s \t%s \t      %d \t\t%d \n', temp1{1,1}, temp1{1,2}, ...
        temp1{1,3}, temp1{1,4}, str2double(temp1{1,5}), ...
        str2double(temp1{1,6}));
    end
        
    closeresult1 = fclose(fid1);
    if closeresult1 == 0 
        disp('File closed successfully: viabledonors.dat')
    else 
        disp('File close not successful: viabledonors.dat')
    end
end