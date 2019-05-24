% This script plots the wave pattern for three different fluids at differing
% values of F

clear
F = input('Please enter a value for F: ')
aEthyl = 0.246;
aWater = 0.250;
aOil   = 0.643;
bEthyl = 0.806;
bWater = 1.000;
bOil   = 1.213;
x = linspace(0,2*pi,100);
yEthyl = F*exp(-aEthyl*x).*sin(bEthyl*x);
yWater = F*exp(-aWater*x).*sin(bWater*x);
yOil = F*exp(-aOil*x).*sin(bOil*x);
plot(x,yEthyl,'r')
hold on
plot(x,yWater,'b')
hold on
plot(x,yOil,'g')
xlabel('Time (in seconds)')
ylabel('y(x) = Fe^(-ax) sin(bx)')
title('Wave Patterns of Different Liquids')
legend('Ethyl Alcohol','Water','Oil')