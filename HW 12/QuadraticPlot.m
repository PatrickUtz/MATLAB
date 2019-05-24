% QuadraticPlot.m
% Patrick Utz, 4/13/18, 12.1

% Description: Write an anonymous function to implement the following 
% quadratic: 3x2-2x+5. Then, use fplot to plot the function in the range
% from -6 to 6

% Variables: quadratic = anonymous function that handles a quadratic

clear

quadratic = @(x) 3.*(x.^2)-(2.*x)+5;
fplot(quadratic,[-6,6]);
title('Quadratic Function Plot');
xlabel('x axis');
ylabel('y axis');
legend('3x^2-2x+5');

