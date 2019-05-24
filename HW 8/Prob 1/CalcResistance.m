% CalcResistance.m
% Patrick Utz, 3/2/18, 8.1
 
% Problem: The resistance R in ohms of a conductor is given by R = V/I, 
% where V is the voltage potential in volts and I is the current in
% amperes. The power consumed by the resistor in watts is given by P = VI.
% Write a MATLAB program with the following files,
% 1. A function named readVI that prompts the user to input the potential
% and the current
% 2. A function named calcRP that takes in two input arguments as potential 
% and current, and returns two output arguments as resistance and power.
% 3. A function named printRP that takes in two input arguments as
% resistance and power, and prints out the values of the resistance
% and power to the screen.
% 4. A script file that will call the above three functions.
% Run a test of your program using input values of V=5volts 
% and I=0.5ampere. Attach the results.
 
% Variables: potential = the voltage potential, current = the current,
% resistance = the resistance, power = the power

clear
[potential, current] = readVI;
[resistance, power] = calcRP(potential, current);
printRP(resistance, power);