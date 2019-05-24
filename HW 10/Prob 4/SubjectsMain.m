% SubjectsMain.m
% Patrick Utz, 3/23/18, 10.4
 
% Problem: Create and run a MATLAB program to solve exercise 20 of Chapter
% 8 with the following changes: The main program should call three 
% functions:
% 1) datagen.m: generate and return (as output arguments) a structure
% array of N subjects, where N is the input argument. The names of the
% subjects can be generated from the 26 alphabets randomly with 3 ? 8 
% letters (all in lower case). The id is simply the index of the subject
% in the structure array. The heights of the subjects is uniformly 
% distributed random numbers between 5.5 and 6.8; The weights of the 
% subjects is uniformly distributed between 90 and 250;
% 2) calcavg.m: calculate the average height and weight of all subject 
% and return them as output arguments.
% 3) printdata.m: print the generated subjects and the results to the 
% screen as shown below

% Variables: subjects = structure of subjects, avgHeight = average
% height of subjects, avgWeight = average weight of subjects

clear

subjects = datagen(4);
[avgHeight, avgWeight] = calcavg(subjects);
printdata(subjects, avgHeight, avgWeight);