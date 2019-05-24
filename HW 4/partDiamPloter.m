% This script reads data from file partdiam.dat 
% and outputs a plot of the data

clear
load partdiam.dat;
x = (partdiam(:,1))'
y = (partdiam(:,2))'
plot(x,y)
xlabel('Time (in minutes)')
ylabel('Diameter (in mm)')
title('Diameter vs Time')