% Prob3EquationPlotter.m
% Patrick Utz, 4/13/18, 12.3

% Description: Write and run a MATLAB program that uses the function 
% given below and does the following: (1) create an anonymous function;
% (2) plot the function over the x range from 0.1 to 3 with maximum step
% size 0.01; (3) properly label the x and y axes and put the function in
% the plot title using TeX symbols; (4) use the fzero function to find 
% the roots of the equation over the interval given (you need to do this
% twice since you need 2 different starting points to find the zeros);
% (5) plot the 2 resulting points on your plot as red squares; (6) use
% the fminbnd function to find the minimum and plot it on your plot as 
% a downward pointing triangle. Hand in the program that does all of the 
% above and the plot resulting from running the program.

% Variables: equationS = anonymous function that sets up the equation,
% zeroX = zeros of the function, minimum = x value where minimum value of 
% the function occurs

clear
x = [.1:.01:3];
equationS = @(x) (exp(.5.*x).*( (1./x) + (log(x))))-5;
plot(x,equationS(x));
hold on
title('Function Plot')
xlabel('x axis')
ylabel('y axis')
legend({'$-5 + e^{0.5x}[ \frac{1}{x}+ ln(x)]$'},'Interpreter','latex')

zeros1 = fzero(equationS,[.1 1])
zeros2 = fzero(equationS,[1 4])
plot(zeros1, 0, 'rs')
plot(zeros2, 0, 'rs')

minimum = fminbnd(equationS,.1,3)
plot(minimum, equationS(minimum), 'v')





