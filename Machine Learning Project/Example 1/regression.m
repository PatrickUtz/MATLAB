function [W] = regression(xTrain,yTrain,numTrain)

yReg = yTrain;
xReg(1:numTrain,1) = 1;
xReg(1:numTrain,2) = xTrain;
W = pinv(xReg)*yReg;