% Mathing_A_Function.m
% Patrick Utz, 4/23/18, 13.4

% Description: Write one program to find the following for the function
%              4x2 + 3.
% (1) Find the indefinite integral of the function using the symbolic 
%     int function.
% (2) Find the definite integral of this function from x=-1 to x=3 using 
%     the symbolic int function.
% (3) Find the definite integral of this function from x = -1 to x = 3 using
%     the trapz function with 100 evenly spaced data points.
% (4) Find the definite integral of this function from x = -1 to x = 3 using 
%     the integral function.
% Show your program and results. Compare the results in (3) and (4), which 
% one is more accurate? Why?

% Variables: all names are self-explanatory 

clear
syms x;
eq1 = 4*x^2 + 3;
eq1Integral = int(eq1);
fprintf('Indefinite Integral With Symbolic Int Function: ');
disp(eq1Integral);
eq1DefiniteIntegral = int(eq1,-1,3);
fprintf('Definite Integral With Symbolic Int Function: ');
disp(eq1DefiniteIntegral);

x2 = linspace(-1,3,100);
eq2 = 4.*(x2).^2 + 3;
eq2DefiniteIntegralTrapz = trapz(x2,eq2);
fprintf('Definite Integral With Trapz Function: ');
disp(eq2DefiniteIntegralTrapz);

fun = @(x3) 4.*(x3).^2 + 3;
eq3DefiniteIntegral = integral(fun,-1,3);
fprintf('Definite Integral With Integral Function: ');
disp(eq3DefiniteIntegral);


