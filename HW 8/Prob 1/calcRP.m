function [resistance, power] = calcRP(potential, current)
% calcRP prompts the user to input the potential and the current
% Format of call: calcRP(potential, current)
% Returns the proper resistance and power

resistance = potential/current;
power = potential*current;
end