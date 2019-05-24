% billing.m
% Patrick Utz, 2/23/18, 7.3
 
% Problem: Write a MATLAB function named billing, which takes
% a vector of all residents? electricity usages (in units) as input 
% argument, and generate a vector of all residents? payments as output
% argument. To test your function, write another script file that 
% calls the function billing and plot the payments versus the usages
% for the range of 0< =usages<=1500 units with step size of 1 unit. 
% Attach your figures.
 
% Variables: p = output payment vector, a = input usage vector
 
function p = billing(a)
% billing calculates the total amount of payment for electricity 
% Format of call: billing( array of usage units )
% Returns an array of payments for the corresponding usage 

for k = 1:length(a)
    if a(k) <= 500
        p(k) = ((a(k))*.02) + 5;
    elseif a(k) <= 1000
        p(k) = (((a(k))-500)*.05) + 15;
    else
        p(k) = (((a(k))-1000)*.10) + 40;
    end
end
