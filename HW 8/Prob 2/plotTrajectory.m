function plotTrajectory(initV, angle, time)
% plotTrajectory prompts the user to input the initial velocity, angle
% of departure, and time
% Format of call: plotTrajectory(initial velocity, angle of departure, time)
% Plots a graph of the trajectory of the projectile when it is above ground

g = 9.81;
t = 0:.01:time;
x = initV*cos(angle).*t;
y = (initV*sin(angle).*t)-(.5*g.*(t.^2));

plot(x,y,'r');
xlabel('Length (x coordinate in meters)');
ylabel('Height (y coordinate in meters)');
title('Trajectory of the Projectile When Above Ground.');
legend('Projectile Position');
% plot(t,x);
% hold on 
% plot(t,y);
end