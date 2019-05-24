% StormIdentifier.m
% Patrick Utz, 2/9/18, 5.4

% Whether a storm is a tropical depression, tropical storm, 
% or hurricane is determined by the average sustained wind speed. 
% In miles per hour, a storm is a tropical depression if the winds 
% are less than 38 mph. It is a tropical storm if the winds are between 
% 39 and 73 mph, and it is a hurricane if the wind speeds are >= 74 mph.
% Furthermore, hurricanes can be categorized based on storm surges. Write
% a script that will prompt the user for the wind speed, and will print 
% what type of storm it is. If it is a hurricane, then your program 
% should prompt the user to enter the storm surge, and will print which 
% category the hurricane is. Your program should print an error message 
% if the user inputs are not in the correct range. Test your program by 
% running it through all possible cases, including an invalid wind speed, 
% and an invalid storm surge. Attach the results.

% Variables: windSpeed = wind speed of storm from the user, surgeRange =
% storm surge range inputted by user

% Algorithm: 
% input value wind speed 
% check to see if it is a valid speed and then return what type of storm it is
% if it is a hurricane input the surge range, else output the type of storm and end the program
% check to see what category the hurricane is 
% output the appropriate category of the hurricane  
% stop
      
clear
windSpeed = input('Please enter the average sustained wind speed: ');
if windSpeed < 0 || isletter(windSpeed)
    fprintf('This is not a valid wind speed. Please enter a valid speed. \n');
else if windSpeed >= 0 && windSpeed < 38
    fprintf('You are currently in a tropical depression. \n');
else if windSpeed >= 39 && windSpeed <= 73
    fprintf('You are currently in a tropical storm. \n');
else if windSpeed >= 74
    fprintf('You are currently in a hurricane. \n \n');
    surgeRange = input('Please enter the storm surge: ');
    if surgeRange < 4 
        fprintf('Invalid number. Please enter a valid storm surge. \n');
    elseif surgeRange >= 4 && surgeRange <= 5
        fprintf('This is a category 1 hurricane. \n');    
    elseif surgeRange >= 6 && surgeRange <= 8
        fprintf('This is a category 2 hurricane. \n');
    elseif surgeRange >= 9 && surgeRange <= 12
        fprintf('This is a category 3 hurricane. \n'); 
    elseif surgeRange >= 13 && surgeRange <= 18
        fprintf('This is a category 4 hurricane. \n');
    else
        fprintf('This is a category 5 hurricane. \n');
    end
    end
end
end
end