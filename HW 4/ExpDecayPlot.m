% This script plots two exponential decay graphs that are defined by 
% the user input 

clear
A = 1;
tau1 = input('Enter first time constant value: ')
tau2 = input('Enter second time constant value: ')
t1 = input('Enter beginning value for time range: ')
t2 = input('Enter ending value for time range: ')
t = t1:.1:t2;
y1 = A*exp(-tau1*t);
y2 = A*exp(-tau2*t);

plot(t,y1, 'r')
hold on
plot(t,y2, 'b')
title('Exponential Decay For Two Time Constants')
xlabel('Time t (in seconds)')
ylabel('y(t) = Ae^(-tau*t)')
legend('First Time Constant','Second Time Constant')