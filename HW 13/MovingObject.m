% MovingObject.m
% Patrick Utz, 4/23/18, 13.3

% Description: An object starts to move at time 0, and its velocity is 
% measured at a sequence of time as below. Write and run a MATLAB program
% that determine and plot its distance from its initial position at t=0
% over this time period, the velocity versus time, and the acceleration
% versus time using subplot(3, 1, n). Use the time interval from 0 to 10s
% for all the plots. Use the central difference technique to compute the 
% acceleration and use the stairs for the acceleration versus time 
% curve. Show your program and curves.
% Time (s) 0 1 2 3 4 5 6 7 8 9 10
% Vel (m/s) 0 3 7 12 15 12 8 6 1 -2 -8

% Variables: all names are self-explanatory  

clear
time = 0:10;
velocity = [0 3 7 12 15 12 8 6 1 -2 -8];
distance = cumtrapz(time,velocity);
dx = diff(time);  
dy = diff(distance);
acceleration = (dy(1:end-1)+dy(2:end))./(dx(1:end-1)+dx(2:end)); 

subplot(3,1,1)
plot(time, distance);
title('Distance vs Time');
xlabel('Time (s)');
ylabel('Distance (m)')

subplot(3,1,2)
plot(time, velocity);
title('Velocity vs Time');
xlabel('Time (s)');
ylabel('Velocity (m/s)');

subplot(3,1,3)
stairs(acceleration);
title('Acceleration vs Time');
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');
