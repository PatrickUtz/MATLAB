% CalcPosition.m
% Patrick Utz, 3/2/18, 8.2
 
% Problem: Write a program to calculate the position of a projectile
% at a given time t. For an initial velocity v0 and angle of departure 
% ?0, the position is given by x and y coordinates as follows (note: 
% the gravity constant g is 9.81m/s2):
% 
% 
% Your program should consist of the following files:
% 1. A function to get the values for the initial velocity and angle
% of departure from user?s input.
% 2. A function that takes the above information as inputs, calculates
% and returns how long it takes for the projectile to fall on ground. The
% result of time (in seconds) should be accurate to the second decimal
% place (i.e., 0.01second).
% 3. A function that takes the outputs from the above functions as input, 
% and plots the trajectory of the projectile when it is above ground.
% 4. A script file that will call the above three functions.
% Use initial velocity of 60mph and angle of departure of 45 degrees to 
% test your program. Attach your results.

% Variables: initV = initial velocity, angle = angle of departure, 
% time (in sec) = how long it takes for the projectile to fall on ground,

clear
[initV, angle] = readVA;
time = calcTimeFall(initV, angle);
plotTrajectory(initV, angle, time);