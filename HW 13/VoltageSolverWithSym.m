% VoltageSolverWithSym.m
% Patrick Utz, 4/23/18, 13.2

% Description: An electrical circuits with time-varying sources is being
% analyzed to follow the following equations. Write a MATLAB program to use 
% the solve function to solve for the three voltages, Va, Vb, and Vc, each
% is a function of time (t). Show your program and results.


% Variables: Va, Vb, Vc = the voltages; eqX = the equations 

clear
syms t Va Vb Vc;
eq1 = 2*(Va - Vb) + 5*(Va - Vc) - exp(-t) == 0;
eq2 = 2*(Vb - Va) + 2*Vb + 3*(Vb - Vc) == 0;
eq3 = Vc == 2*sin(t);
s = solve(eq1,eq2,eq3,Va,Vb,Vc);
disp('Using symbolic solve function');
disp(s.Va);
disp(s.Vb);
disp(s.Vc);