% SpikeNoisesSimulation.m
% Patrick Utz, 3/2/18, 8.4
 
% Problem: Other than random noises, there is another type of noises 
% that is common in real-world digital signals, called spike noises, i.e.,
% isolated data samples whose values are very different from the normal 
% data samples around. For example, dark pixels in bright area or bright
% pixels in dark area in a digital image, which could be a result of dead 
% pixel of imaging device. In this problem, we will write a program to 
% simulate the spike noise reduction by median filtering.
% 1. Generate a one-period sinusoidal signal s(n) with 100 linearly spaced 
%    samples from 0 to 2pi.
% 2. Add a spike noise with value 10 at a random position in s(t) to 
%    generate a noisy signal x(t)
% 3. Call the median filtering function you wrote in Problem 8.3 to perform 
%    median filtering to x(t) with M=3, and M=5, respectively.
% 4. Plot the clean signal s(t), the noisy signal x(t), and the two filtered
%    signals in the same plot.
% Run your program and attach your results.

% Variables: n = sample range, s = clean sinusoidal signal, x = sinusoidal
% signal with random noise, M3 = filtered signal with M = 3, M5 = filtered 
% signal with M = 5 

clear 
n = linspace(0,2*pi,100);
s = sin(n);
x = s;
x(randi([1,100])) = 10;
M3 = medianFilter(x,3);
M5 = medianFilter(x,5);

plot(n,s,'b');
hold on
plot(n,x,'r');
plot(n,M3,'c');
plot(n,M5,'m');
xlabel('Linearly Spaced Samples');
ylabel('Signal Value');
title('Spike Noises Correction Using Median Filtering');
legend('Clean Signal','Signal With Noise','Filtered: M=3','Filtered: M=5');
