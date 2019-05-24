% MultiTable.m
% Patrick Utz, 2/23/18, 7.1
 
% Problem: Create a MATLAB script file to print multiplication 
% table in the format shown in exercise 16 of Chapter 5. Your program 
% should prompt the user to enter a positive integer number N, as the
% number of rows in the result. The example given in the book shows
% the result when N=5. Your program should be able to perform error-
% checking for the user inputted N value. If the user inputs a value
% that is not a positive integer, print an error message ?Invalid 
% N value!? and prompt the user to enter N again. If the user could
% not enter a valid value of N for 5 times, print an error message 
% ?You have entered invalid values for 5 times!?, and stop the program.
% Test your program using the following two sequences of input: 
% 1) -5; 3.5; 0; 10. 2) -1, -2.5; 0; 3.5; -2. Attach your results.
 
% Variables: count = used to keep count of how many times user has 
% inputted wrong data, N = the input of how many rows to make the
% matrix out of, array = the multiplication array
 
clear
count = 0;
N = input('Please enter a positive integer for the number of rows: ');
array = [];
for k = 1:4
    if N >= 1 && rem(N,1) == 0
        for l = 1:N
            fprintf('%d ', l:l:(l*l));
            fprintf('\n')
        end
        break;
    else 
        fprintf('Invalid N value!\n');
        N = input('Please enter a positive integer: ');
        count = count + 1;
    end
end

if count == 4
    fprintf('You have entered invalid values for 5 times!\n'); 
else
    disp(array);
end
