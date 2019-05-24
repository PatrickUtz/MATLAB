a = randi([50,100],1,20)
oddsReference = rem((a(1:end)),2) 
logicalOdds = logical(oddsReference)
odds = a(logicalOdds)
logicalEvens = ~logicalOdds
evens = a(logicalEvens)

% a = logical(1)
% 
% b = ~(a)
