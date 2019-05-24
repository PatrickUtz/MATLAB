% calcavg.m
% Patrick Utz, 3/23/18, 10.5

function CreateStudentInfo()
% CreateStudentInfo creates a data file named studentinfo.dat 
% Format of call: CreateStudentInfo( )
% Returns nothing but creates a data file named studentinfo.dat 

studentinfo = [44 7 7.5 8; 33 5.5 6 6.5; 37 8 8 8; 24 6 7 8];
save studentinfo.dat studentinfo -ascii;

end