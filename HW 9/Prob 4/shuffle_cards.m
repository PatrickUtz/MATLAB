% shuffle_cards.m
% Patrick Utz, 3/16/18, 9.4
 
function shuffle = shuffle_cards(inputStr)
% shuffle_cards shuffles a given set of cards
% Format of call: shuffle_cards(string array representing deck to be shuffled)
% Returns a string matrix of the shuffled deck

random = randperm(length(inputStr));
shuffle = strings(1,2);

for k = 1:length(inputStr)
    shuffle(k,:) = inputStr(random(k),:);
end
