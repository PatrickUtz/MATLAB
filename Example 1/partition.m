function [xTrain,yTrain,numTrain,xTest,yTest,numTest] = partition(x,y)

sortTrain = logical(rand(1000,1)<=0.7);
sortTest = ~sortTrain;
xTrain = x(sortTrain);
yTrain = y(sortTrain);
xTest = x(sortTest);
yTest = y(sortTest);
numTrain = length(xTrain);
numTest = length(xTest);
