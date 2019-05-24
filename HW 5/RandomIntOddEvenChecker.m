% RandomIntOddEvenChecker.m
% Patrick Utz, 2/9/18, 5.2

% Problem: Write a script that will generate one random integer, and 
% will print whether the random integer is an even or an odd number. 
% (Hint: an even number is divisible by 2, whereas an odd number is not; 
% so check the remainder after dividing by 2). Test your program by 
% running it at least twice, one with an even number, and another with 
% an odd number. Attach the results.

% Variables: randInt = random integer created in the range between
% 1 and 100

% Algorithm: 
% create random integer
% check to see if the integer is odd or even by dividing by two 
% output whether the integer is odd or even  
% stop
      
clear
randInt = randi([1,100],1,1);
if rem(randInt,2) == 0
    fprintf('The random integer %d is an even number \n', randInt);
else 
    fprintf('The random integer %d is an odd number \n', randInt);
end


