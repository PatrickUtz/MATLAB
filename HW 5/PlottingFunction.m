% PlottingFunction.m
% Patrick Utz, 2/9/18, 5.5

% Create and run a MATLAB script file to plot the following function 
% for x over the range of [-2?, 2?] with step size of 0.01?. 
% Show your program and result figure.

% Variables: x = the x range, y = the step function split into three parts,
% k = a vector used to index through the x and y vectors to check for
% range and give the appropriate length to y for constant functions

% Algorithm: 
% create range of x 
% split the range into three parts using conditional statements and apply
% the appropriate y function for the respective range
% plot the function of y vs x
% give title and labels for x and y
% stop
      
clear 
x = (-2*pi):(.01*pi):(2*pi);
y = -1*(x >= -2*pi & x <= -pi)+ 1*(x > (pi/2) & x <= 2*pi) + (2*(sin(x)).^2 - 1).*(x > (-pi) & x <= (pi/2)); 

% 
% x = (-2*pi):(.01*pi):(2*pi)
% for k = 1:length(x)
%     if x(k) >= -2*pi && x(k) <= -pi
%         y(k) = -1;
%     elseif x(k) > -pi && x(k) <= (pi/2)
%         y(k) = 2*(sin(x(k))).^2 - 1;
%     else
%         y(k) = 1;
%     end
% end 

plot (x,y)
title('Step Function Plot of y vs x');
xlabel('x');
ylabel('y');
axis([-6.7 6.7 -1.3 1.3])