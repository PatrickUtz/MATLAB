% TemperatureProblem.m
% Patrick Utz, 4/23/18, 13.5

% Description: Write a MATLAB program to solve the following problem
% The temperature (in degrees Fahrenheit) was recorded every 3 hours for
% a day at a particular location. Using a 24 hour clock where midnight is
% 0, the measured data is shown below:

% Time:0 3 6 9 12 15 18 21
% Temp: 55.5 52.4 52.6 55.7 75.6 77.7 70.3 66.6
 
% 1. plot the data points as black circles
% 2. plot linear inter/extrapolation of the temperature using blue dashed 
%     line and spline inter/extrapolation using red dot-dashed line, in the
%     same figure window as that in 1.
% 3. find the temperature at 10:30am and 11:00pm during the day from both
%     curves in 2, and plot the points in the figure as blue squares(for 
%     linear) and red stars(for spline), respectively.
% 4. in a new figure window, repeat 1, curve-fitting the data with a third-
%     order polynomial, plot the smooth fitted curve as blue dashed line, 
%     and a fifth-order polynomial plotted in red dot dashed line.
% 5. find the time during the day when temperature is 60 and 65 degree,
%     from both polynomials in 4, and plot those points in the figure
%     as blue squares(for 3rd order) and red stars(5th order).
% Properly label and title your figures, use legends if necessary.

% Variables: all names are self-explanatory (for the most part) 

clear
time = [0:3:21];
temp = [55.5 52.4 52.6 55.7 75.6 77.7 70.3 66.6];
time1 = 0:.1:21

hold on
plot(time,temp,'ko')
title('Temperature vs Time');
xlabel('Time (hours)');
ylabel('Temperature (F)');

temp2 = interp1(time,temp,time1,'linear')
temp2_1030AM = temp2(time1 == 10.500);
temp2_1100PM = temp2(time1 == 21.000);
plot(time1,temp2,'b--');
plot(10.500,temp2_1030AM,'bs');
plot(21.000,temp2_1100PM,'bs');


temp3 = interp1(time,temp,time1,'spline');
temp3_1030AM = temp3(time1 == 10.500);
temp3_1100PM = temp3(time1 == 21.000);
plot(time1,temp3,'r-.');
plot(10.500,temp3_1030AM,'r*');
plot(21.000,temp3_1100PM,'r*');

Lin1030 = sprintf('Temp @ 10:30 AM is %.3f F (linear)', temp2_1030AM);
Lin1100 = sprintf('Temp @ 11:00 PM is %.3f F (linear)', temp2_1100PM);
Spli1030 = sprintf('Temp @ 10:30 AM is %.3f F (spline)', temp3_1030AM);
Spli1100 = sprintf('Temp @ 11:00 PM is %.3f F (spline)', temp3_1100PM);

legend('Data Points','Linear Interpolation',Lin1030,Lin1100,...
    'Spline Interpolation',Spli1030,Spli1100);

hold off

hold on
plot(time,temp,'ko')
title('Temperature vs Time');
xlabel('Time (hours)');
ylabel('Temperature (F)');

p3 = polyfit(time,temp,3);
temp4 = polyval(p3,time1);
temp4_60_time = time1(temp4 == 60.133505194805210);
temp4_65_time1 = time1(temp4 == 65.190458425525110);
temp4_65_time2 = time1(temp4 == 65.319716001282600);
plot(time1,temp4,'b--');
plot(temp4_60_time,60.133505194805210,'bs');
plot(temp4_65_time1,65.190458425525110,'bs');
plot(temp4_65_time2,65.319716001282600,'bs');


p5 = polyfit(time,temp,5);
temp5 = polyval(p5,time1);
temp5_60_time = time1(temp5 == 60.472017920512840);
temp5_65_time1 = time1(temp5 == 65.385637097035910);
temp5_65_time2 = time1(temp5 == 65.006782524317100);
temp5_65_time3 = time1(temp5 == 65.105937685596690);
plot(time1,temp5,'r-.');
plot(temp5_60_time,60.472017920512840,'r*');
plot(temp5_65_time1,65.385637097035910,'r*');
plot(temp5_65_time2,65.006782524317100,'r*');
plot(temp5_65_time3,65.105937685596690,'r*');

Poly3_60   = sprintf('60 F Occur @ time %.3f (poly 3)', temp4_60_time);
Poly3_65_1 = sprintf('65 F Occur @ time %.3f (poly 3)', temp4_65_time1);
Poly3_65_2 = sprintf('65 F Occur @ time %.3f (poly 3)', temp4_65_time2);
Poly5_60   = sprintf('60 F Occur @ time %.3f (poly 5)', temp5_60_time);
Poly5_65_1 = sprintf('65 F Occur @ time %.3f (poly 5)', temp5_65_time1);
Poly5_65_2 = sprintf('65 F Occur @ time %.3f (poly 5)', temp5_65_time2);
Poly5_65_3 = sprintf('65 F Occur @ time %.3f (poly 5)', temp5_65_time3);

legend('Data Points','Third-Order Polynomial',Poly3_60,Poly3_65_1,...
    Poly3_65_2,'Fifth-Order Polynomial',Poly5_60,Poly5_65_1,...
    Poly5_65_2,Poly5_65_3);

hold off