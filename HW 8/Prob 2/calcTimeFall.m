function time = calcTimeFall(initV, angle)
% calcTimeFall prompts the user to input the initial velocity and angle of 
% departure
% Format of call: calcTimeFall(initial velocity, angle of departure)
% Returns time (in seconds) it takes for the projectile to fall on the 
% ground

gravity = 9.81;
rawTime = (2*initV*sin(angle))/gravity;
time = round(rawTime,2);
end