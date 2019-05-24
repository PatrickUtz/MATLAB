% cards.m
% Patrick Utz, 3/16/18, 9.4
 
% Problem: Create and run a MATLAB program that ?shuffles? a deck of 52 
% playing cards. Your program should include the following files.
% 1. A main script file named cards.m, which calls the following functions.
% 2. A function named new_deck, which generates a new deck of 52 cards, 
% stored and returned in a string matrix with 52 rows, each representing 
% one card. The new deck should be sorted by both rank (from A to Q) and 
% suit (in the order of club, diamond, heart, spades).
% 3. A function named shuffle_cards, which takes a string matrix
% representing any number of cards in any rank or suit order as input, 
% randomly reorder them, and return the shuffled cards in a new string
% matrix with the new order.
% 4. A function named disp_cards, which displays all cards given in a string
% matrix. For example, when displaying a new deck of cards, it should print
% out the following lines:

% Variables: newDeck = a new deck of cards; shuffledOnce = a deck of 
% cards that has been shuffled once; shuffledTwice = a deck of cards that 
% has been shuffled twice

clear
fprintf('One New Deck: \n')
newDeck = new_deck();
disp_cards(newDeck)
fprintf('\n\n One Deck Shuffled Once: \n')
shuffledOnce = shuffle_cards(newDeck);
disp_cards(shuffledOnce)
fprintf('\n\n Two Decks Shuffled Twice: \n')
shuffledOnce1 = shuffle_cards(newDeck);
shuffledOnce2 = shuffle_cards(newDeck);
shuffledTwice1 = shuffle_cards(shuffledOnce1);
disp_cards(shuffledTwice1)
shuffledTwice2 = shuffle_cards(shuffledOnce2);
disp_cards(shuffledTwice2)

