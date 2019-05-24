% pHScaleTester.m
% Patrick Utz, 2/9/18, 5.3

% Problem: In chemistry, the pH of an aqueous solution 
% is a measure of its acidity. The pH scale ranges from 0 to 14, 
% inclusive. A solution with a pH of 7 is said to be neutral, a solution 
% with a pH greater than 7 is basic, and a solution with a pH less than 7 
% is acidic. Write a script that will prompt the user for the pH of a 
% solution, and will print whether it is neutral, basic, or acidic. If 
% the user enters an invalid pH, an error message will be printed. Test 
% your program by running it five times, with the following inputs: -1; 
% 3; 7; 10; and 18. Attach the results.

% Variables: pH = input value of pH

% Algorithm: 
% input value of pH from user 
% check to see if pH is within range
% check to see what the pH value corresponds to on the scale
% output what the pH value is on the scale  
% stop
      
clear
pH = input('Hello! Please enter a valid pH value to see where it lies on the scale: ');

if pH < 0 || pH > 14
    fprintf('%d is an invalid pH value please enter a valid one. \n', pH);
elseif pH >= 0 && pH < 7
    fprintf('A pH of %d is considered acidic. \n', pH);
elseif pH > 7 && pH <= 14
    fprintf('A pH of %d is considered basic. \n', pH);
else
    fprintf('A pH of %d is considered neutral. \n', pH);
end