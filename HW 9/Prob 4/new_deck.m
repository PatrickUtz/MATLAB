% new_deck.m
% Patrick Utz, 3/16/18, 9.4
 
function newDeck = new_deck()
% new_deck creates a new deck in a string matrix form 
% Format of call: new_deck()
% Returns a string matrix representing a new deck of cards

newDeck = strings();
ranks = ["A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K"];
suits = ["club" "diamond" "heart" "spade"];
n = 0;
allRanks = strings();
allSuits = strings();
for j = 1:13
    n = n+1;
    p = size(allRanks,1);
    for i = 1:4
        o = j*i;
        allRanks(p+i,1) = ranks(n);
    end
end

for j = 1:13
   p = size(allSuits,1);
   for i = 1:4
       o = j*i;
       allSuits(p+i,2) = suits(i);
   end
end

allRanks(1) = [];
allSuits(1,:) = [];

for d = 1:52
    allRanks(d,2) = allSuits(d,2);
end
newDeck = allRanks;
