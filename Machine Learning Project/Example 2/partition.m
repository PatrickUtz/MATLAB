function [x1Train,x2Train,yTrain,numTrain,x1Test,x2Test,yTest,numTest] = partition(x1,x2,y)
sortTrain = logical(randn(1000,1)<=0.7);
sortTest = ~sortTrain;
x1Train = x1(sortTrain);
x2Train = x2(sortTrain);
yTrain = y(sortTrain);
x1Test = x1(sortTest);
x2Test = x2(sortTest);
yTest = y(sortTest);
numTrain = length(x1Train);
numTest = length(x1Test);
