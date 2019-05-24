% denoising.m
% Patrick Utz, 2/23/18, 7.5
 
% Problem: Create a script file named denoising.m to do the following:
%     Step 1: generate the noisy vector x as follows:
%     1.First, generate a one-period sinusoidal signal s(n) with 100
%         linearly spaced samples from 0 to 2pi,
%     2.Then, generate 100 random noise samples w(n) ranging from -0.1 
%         to 0.1.
%     3.Last, add each noise sample to the corresponding signal sample
%         to generate x.
%     Step 2: Call your MAfilter function written in Problem 7.4 with 
%     two different M values: 2 and 5. Step 3: Plot the original clear
%     sinusoidal signal, the noisy signal, and both output signals
%     generated in Step 2 in one single figure. Use figure titles, 
%     labels and legends to show the comparisons.
% Note: If you could not make MAfilter work in problem 7.4, you can
% use the built-in function filter() in the Digital Signal Processing 
% toolbox to do Step 2 in the following way: y = filter([0.5, 0.5], 1, x)
% for M = 2 y = filter(0.2*ones(1,5), 1, x) for M=3
 
% Variables: c = x axis sample spacing, s = clean sin function, n =
% random noise vector, x = sin signal with noise, f1 = sin with noise
% and filter of M = 2 applied, f2 = sin with noise and filter of M = 
% 5 applied

clear 
c = linspace(0,2*pi,100);
s = sin(c);
n = rand(1,100)*(.1+.1)+(-.1);
x = s+n;
f1 = MAfilter(x,2);
f2 = MAfilter(x,5);

plot(c,s)
hold on 
plot(c,x)
plot(c,f1)
plot(c,f2)
xlabel('Linear Sample Spacing')
ylabel('Signals as Functions of Samples')
title('Cleaning Signals Using Filters')
legend('Original Sinusoidal Signal','Signal with Noise', 'Filter Applied with M=2', 'Filter Applied with M=5')