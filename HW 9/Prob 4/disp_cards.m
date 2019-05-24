% disp_cards.m
% Patrick Utz, 3/16/18, 9.4
 
function disp_cards(inputStr)
% disp_cards converts a string array of a card deck and displays it 
% Format of call: disp_cards(string array of card deck want to display)
% Displays the deck of cards to the user 

for k = 1:length(inputStr);
    fprintf('%s %s \n', inputStr(k,1), inputStr(k,2))
end