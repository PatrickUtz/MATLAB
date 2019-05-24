% wordscramble.m
% Patrick Utz, 3/16/18, 9.3
 
% Problem: Create and run a Matlab program called wordscramble.m to 
% randomly scramble a given word for N times. The word to be scrambled 
% and N should be entered by the user input. Error-check the input N to
% make sure it is a positive integer. As the result of running your program,
% there should be N variables, each with a name as ?word1?, ?word2?, ... ,
%     storing the N scrambled words, respectively. Use disp function to 
% display the original word as well as all the scrambled words as follows:

% Variables: word = inputted word; n = amount of times that user wants
% the word to be scrambled; result = final result; random = refernce array
% for indices of the scramble; scarmble = scrambled words; number = temp 
% conversion of the number n to be displayed 

clear  
word = input('Please enter a word: ', 's');
n = input('How many times do you want to scramble the word? ');
while n < 1 || int32(n) ~= n
    fprintf('Invalid input.\n')
    n = input('How many times do you want to scramble the word? ');
end
result = ['word  = ', 'example'];
for k = 1:n
    random = randperm(length(word));
    scramble = [''];
    for m = 1:length(word)
        scramble(m) = word(random(m));
    end
    number = num2str(k);
    result(k+1,:) = ['word' number ' = ' scramble];
end
disp(result)