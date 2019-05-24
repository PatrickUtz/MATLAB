% PlotFromUser.m
% Patrick Utz, 3/16/18, 9.1
 
% Problem: Create and run a Matlab program plot the following function
% within a user specified range, with the user specified color and marker
% style. Your program should prompt the user to enter a valid positive 
% number n that is greater than 2 (n>2), a valid color (?red?, ?green?
% or ?blue?), and a valid data marker style (?*? or ?o?). Perform error-
% checking for all user?s inputs, and plot the following function within 
% the range of 0 ? x ? n, with the specified color and style.

% Variables: upperBound = upperBound input; color/colorNoBlank = inputted
% color; marker/markerNoBlank = inputted marker; used standard variables
% for plot
 
clear
upperBound = input('Please enter the upper bound of x that is greater than 2: ');
while upperBound <= 2 
    fprintf('\nInvalid value! The upper bound should be a value greater than 2.\n');
    upperBound = input('Please enter the upper bound of x that is greater than 2: ');
end
color = input('\nEnter a color; red, green, or blue: ', 's');
colorNoBlank = strtrim(color);
while ~(strcmp(colorNoBlank,'red')) && ~(strcmp(colorNoBlank,'green')) && ~(strcmp(colorNoBlank,'blue'))
    fprintf('Invalid color!\n');
    color = input('\nEnter a color; red, green, or blue: ', 's');
    colorNoBlank = strtrim(color);
end
marker = input('\nEnter a plot style; * or o: ', 's');
markerNoBlank = strtrim(marker);
while ~(strcmp(markerNoBlank,'*')) && ~(strcmp(markerNoBlank,'o')) 
    fprintf('Invalid style!\n');
    marker = input('\nEnter a plot style; * or o: ', 's');
    markerNoBlank = strtrim(marker);
end

x = 0:0.1:upperBound;
y = (exp(-x./2)).*(x >= 0 & x <= 2) + (exp(-1).*(x-1).^2).*(x > 2 & x <= upperBound);
plot(x,y,colorNoBlank,'Marker',markerNoBlank);
customTitle = sprintf('y = f(x) with x in the range of 0 and %s',num2str(upperBound));
title(customTitle);
xlabel('x');
ylabel('y');
