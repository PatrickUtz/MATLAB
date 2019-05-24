% SawToothPlot.m
% Patrick Utz, 4/13/18, 12.2

% Description: Write a program to plot the following saw-tooth function
% as shown.

% Variables: sawTooth = anonymous function that creates the sawtooth

clear
% x = linspace(-6,10,100)
sawTooth = @(x) 0*(x<-4)+(.5*x+2).*(x>-4 & x<=-2)+(.5*x+1).*(x>-2 & ...
            x<=0)+(.5*x).*(x>0 & x<=2)+(.5.*x-1).*(x>2 & x<=4)+(.5.*x-2)...
            .*(x>4 & x<=6)+(.5.*x-3).*(x>6 & x<=8)+0*(x>8);
fplot(sawTooth,[-6 10]);
axis([-6 10 -.2 1.2])
title('Saw Tooth Function Plot');
xlabel('x axis');  
ylabel('y axis');
legend('Saw Tooth Graph');

