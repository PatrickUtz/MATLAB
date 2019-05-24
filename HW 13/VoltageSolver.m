% VoltageSolver.m
% Patrick Utz, 4/23/18, 13.1

% Description: Analyzing electric circuits can be accomplished by 
% solving sets of equations. For a particular circuit, the voltages V1,
% V2, and V3 are found through the following linear equations: 


% Variables: A = the constants of V1, V2, V3 respectively; B = the 
% answers to each equation; V1, V2, V3 = the answers to the system

clear
A = [1 0 0; -6 10 -3; 0 -1 51];
B = [5;0;0];
answer = A\B;
V1 = answer(1)
V2 = answer(2)
V3 = answer(3)
