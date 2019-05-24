function [W] = regression(x1Train,x2Train,yTrain,numTrain)
yReg = yTrain;
xReg(1:numTrain,1) = 1;
xReg(1:numTrain,2) = x1Train;
xReg(1:numTrain,3) = x2Train;
W = pinv(xReg)*yReg;