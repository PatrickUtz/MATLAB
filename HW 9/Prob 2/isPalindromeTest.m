% test program for problem two

testString = 'A man, a plan, a cat, a canal Panama!';
if ispalindrome(testString)
    fprintf('''%s'' is a palindrome!\n',testString)
else
    fprintf('''%s'' is not a palindrome!\n',testString)
end