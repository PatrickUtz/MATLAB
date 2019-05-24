% This script converts flow from m^3/s to ft^3/s

clear
flowMeters = input('Enter the flow in m^3/s: ');
flowFeet = flowMeters*0.028;
fprintf('A flow rate of %f meters per sec is equivalent to %f feet per sec \n', flowMeters, flowFeet)