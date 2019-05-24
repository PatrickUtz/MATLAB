% ispalindrome.m
% Patrick Utz, 3/16/18, 9.2
 
% Problem: Write a Matlab function called ispalindrome to accept a string
% as input argument and determine if this string is a palindrome. The 
% function should return a logical TRUE value if it is and a logical FALSE 
% if it is not and output appropriate messages. A palindrome is a sentence
%     that reads the same backward as forward, such as ?Reward a Toyota 
%     drawer? or Napoleon?s classic lament, ?Able was I ere I saw Elba?.
%     Punctuation marks, blanks, and any other non- letter characters 
%     shall have no effects. The decision is not case-sensitive. Test
%     your function with the two sentences given above, then ?Today is 
%     such a nice day!? and ?A man, a plan, a cat, a canal Panama!?. Your
%     last test should output the following message:
% 'A man, a plan, a cat, a canal Panama!' is a palindrome!

% Variables: onlyLetterString = turns input into pure letters;
% testString = makes all letters lower case and ready to test;
% flipString = flips the testString left to right

function result = ispalindrome(stringIn)
% ispalindrome calculates if input string is a palindrome 
% Format of call: ispalindrome( input string )
% Returns a logical TRUE value if it is a palindrome and a logical FALSE 
% if it is not   

onlyLetterString = stringIn(isletter(stringIn));
testString = lower(onlyLetterString);
flipString = fliplr(testString);
if testString == flipString
    result = logical(1);
else
    result = logical(0);
end
end