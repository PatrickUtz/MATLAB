% wordparser.m
% Patrick Utz, 3/23/18, 10.2
 
% Problem: Write a MATLAB function called wordparser that can parse
% words for a text document. The function should take the document as 
% input, and return one single output argument which stores all distinctive
% words (not case sensitive) in the document. Your program should be able 
% to eliminate any punctuations leading or trailing each word. It should 
% also be able to handle an empty input. Use the following input to test 
% your program:
% 1. This is a test.
% 2. Good!
% 3. He said, ?Go, go for it!?

% Variables: words = used to modify and output the cell array with only
% words

function words = wordparser(text)
% wordparser seperates text into individual words  
% Format of call: wordparser( input text )
% Returns cell array with individual words

words = text;
for k = 1:length(words)        
    if ~isletter(words(k))
        words(k) = ' ';
    end
end
words = deblank(words);
words = strsplit(words,' ')
