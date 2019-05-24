% Midterm deficinecy grading program.
% Assigns letter grade according to weighted sum of
% grades for each student.
% 
% input arguments: grades: matrix of students' grades (each row for one 
%                             student)
%                  weights: a row vector of weights for each graded item
% output arguments: letter_grades: a column vector of letter grade for 
%                                  each student

clear all
clc

% grades of four students
% HW1, HW2, Quiz1, Quiz2

grades = [100 92 90 90
          100 78 75 80
          90 85 80 82
          100 95 83 87];
% weights
weights = [0.1, 0.1, 0.6, 0.6];
for k = 1:size(grades,1)
    g(k) = sum(grades(k,:).*weights)/sum(weights);
    if g(k) >= 90 & g(k) <= 100
        g(k) = 'A';
    elseif g(k) >= 80 
        g(k) = 'B';
    elseif g(k) >= 70 
        g(k) = 'C';
    elseif g(k) >= 60 
        g(k) = 'D';
    else
        g(k) = 'F';
    end
end

letter_grades = g';
disp(char(letter_grades)) 
        