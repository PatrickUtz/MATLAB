% Prob4LogScalePlotting.m
% Patrick Utz, 4/13/18, 12.4

% Description: Explore the log scale plotting functions semilogx,
% semilogy and loglog. Using a log scale plot can reveal large dynamic 
% ranges, which is common in many engineering applications. For example,
% a frequency-selective amplifier is designed to have its gain amplitude 
% G as a function of frequency f (in Hz), as described in the following 
% equation:
 

% For each of the system, create 4 subplots, the first one using linear x
% and y axis, the second one using log x axis but linear y axis, the third
% one using linear x axis but log y axis, and the last one using both log x 
% and y axis. Compare the two systems in the same subplot figures. Use 
% appropriate labels, titles and legends for all your plots. Make sure the
% system component values are presented in the figure.
% Variables: r = resistor value; c = capacitor value; l = inductor value;
% f = frequency; g = gain amplitude

clear
r1 = 1
r2 = 10
c1 = 1
c2 = .1
l1 = .1
l2 = .01
f = 1:10^6;

% System 1
g = 1000./(sqrt(1+ (r1.*(2.*pi.*f.*c1 - (1/2.*pi.*f.*l1)) ).^2 ));
subplot(4,4,1)
plot(f,g)
title('System 1 Plotted on Linear x and y axis')
xlabel('linear x axis')
ylabel('linear y axis')
legend({'$\frac{1000}{\surd{1+[R(2pifC-\frac{1}{2pifL})]^2}}$'},'Interpreter','latex')
text(700000,150,'R = 1  kohm','Color','red','FontSize',7)
text(700000,140,'C = 1  microF','Color','red','FontSize',7)
text(700000,130,'L = .1 H','Color','red','FontSize',7)

subplot(4,4,2)
semilogx(f,g);
title('System 1 Plotted on Log x and Linear y axis')
xlabel('log x axis')
ylabel('linear y axis')
legend({'$\frac{1000}{\surd{1+[R(2pifC-\frac{1}{2pifL})]^2}}$'},'Interpreter','latex')
text(30000,150,'R = 1  kohm','Color','red','FontSize',7)
text(30000,140,'C = 1  microF','Color','red','FontSize',7)
text(30000,130,'L = .1 H','Color','red','FontSize',7)

subplot(4,4,3)
semilogy(f,g);
title('System 1 Plotted on Linear x and Log y axis')
xlabel('linear x axis')
ylabel('log y axis')
legend({'$\frac{1000}{\surd{1+[R(2pifC-\frac{1}{2pifL})]^2}}$'},'Interpreter','latex')
text(700000,2,'R = 1  kohm','Color','red','FontSize',7)
text(700000,.7,'C = 1  microF','Color','red','FontSize',7)
text(700000,.3,'L = .1 H','Color','red','FontSize',7)

subplot(4,4,4)
loglog(f,g);
title('System 1 Plotted on Log x and y axis')
xlabel('log x axis')
ylabel('log y axis')
legend({'$\frac{1000}{\surd{1+[R(2pifC-\frac{1}{2pifL})]^2}}$'},'Interpreter','latex')
text(10000,2,'R = 1  kohm','Color','red','FontSize',7)
text(10000,.7,'C = 1  microF','Color','red','FontSize',7)
text(10000,.3,'L = .1 H','Color','red','FontSize',7)

% System 2
g2 = 1000./(sqrt(1+ (r2.*(2.*pi.*f.*c2 - (1/2.*pi.*f.*l2)) ).^2 ));
subplot(4,4,5)
plot(f,g2)
title('System 2 Plotted on Linear x and y axis')
xlabel('linear x axis')
ylabel('linear y axis')
legend({'$\frac{1000}{\surd{1+[R(2pifC-\frac{1}{2pifL})]^2}}$'},'Interpreter','latex')
text(700000,150,'R = 10  kohm','Color','red','FontSize',7)
text(700000,140,'C = .1  microF','Color','red','FontSize',7)
text(700000,130,'L = .01 H','Color','red','FontSize',7)

subplot(4,4,6)
semilogx(f,g2);
title('System 2 Plotted on Log x and Linear y axis')
xlabel('log x axis')
ylabel('linear y axis')
legend({'$\frac{1000}{\surd{1+[R(2pifC-\frac{1}{2pifL})]^2}}$'},'Interpreter','latex')
text(30000,150,'R = 10  kohm','Color','red','FontSize',7)
text(30000,140,'C = .1  microF','Color','red','FontSize',7)
text(30000,130,'L = .01 H','Color','red','FontSize',7)

subplot(4,4,7)
semilogy(f,g2);
title('System 2 Plotted on Linear x and Log y axis')
xlabel('linear x axis')
ylabel('log y axis')
legend({'$\frac{1000}{\surd{1+[R(2pifC-\frac{1}{2pifL})]^2}}$'},'Interpreter','latex')
text(700000,2,'R = 10  kohm','Color','red','FontSize',7)
text(700000,.7,'C = .1  microF','Color','red','FontSize',7)
text(700000,.3,'L = .01 H','Color','red','FontSize',7)

subplot(4,4,8)
loglog(f,g2);
title('System 2 Plotted on Log x and y axis')
xlabel('log x axis')
ylabel('log y axis')
legend({'$\frac{1000}{\surd{1+[R(2pifC-\frac{1}{2pifL})]^2}}$'},'Interpreter','latex')
text(10000,2,'R = 10  kohm','Color','red','FontSize',7)
text(10000,.7,'C = .1  microF','Color','red','FontSize',7)
text(10000,.3,'L = .01 H','Color','red','FontSize',7)