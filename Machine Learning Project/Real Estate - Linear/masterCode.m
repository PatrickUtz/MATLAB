clear;
% Step 1: Reading and Cleaning Data
filename = 'resd_data.xlsx';
data = xlsread(filename);
data(isnan(data)) = 0;
data1 = data(all(data,2),:);
logiRenting = (data1(:,8) < 10000);
indicesRenting = (1:length(logiRenting))';
rowsRenting = indicesRenting(logiRenting);
dataCleaned = removerows(data1,rowsRenting);
[normalizedData,mu,stdev] = zscore(dataCleaned);

% Step 2: Partition Data
x1 = normalizedData(:,1);
x2 = normalizedData(:,2);
x3 = normalizedData(:,3);
x4 = normalizedData(:,4);
x5 = normalizedData(:,5);
x6 = normalizedData(:,6);
x7 = normalizedData(:,7);
y   = normalizedData(:,8);

sortTrain = logical(randn(length(x1),1)<=0.7);
sortTest = ~sortTrain;
x1Train = x1(sortTrain);
x2Train = x2(sortTrain);
x3Train = x3(sortTrain);
x4Train = x4(sortTrain);
x5Train = x5(sortTrain);
x6Train = x6(sortTrain);
x7Train = x7(sortTrain);
yTrain = y(sortTrain);
x1Test = x1(sortTest);
x2Test = x2(sortTest);
x3Test = x3(sortTest);
x4Test = x4(sortTest);
x5Test = x5(sortTest);
x6Test = x6(sortTest);
x7Test = x7(sortTest);
yTest = y(sortTest);
numTrain = length(x1Train);
numTest = length(x1Test);


% Step 3: Training the Neural Network
yReg = yTrain;
xReg(1:numTrain,1) = 1;
xReg(1:numTrain,2) = x1Train;
xReg(1:numTrain,3) = x2Train;
xReg(1:numTrain,4) = x3Train;
xReg(1:numTrain,5) = x4Train;
xReg(1:numTrain,6) = x5Train;
xReg(1:numTrain,7) = x6Train;
xReg(1:numTrain,8) = x7Train;
W = pinv(xReg)*yReg;


% Step 4: Performance Evaluation
xValues(1:numTest,1) = 1;
xValues(1:numTest,2) = x1Test;
xValues(1:numTest,3) = x2Test;
xValues(1:numTest,4) = x3Test;
xValues(1:numTest,5) = x4Test;
xValues(1:numTest,6) = x5Test;
xValues(1:numTest,7) = x6Test;
xValues(1:numTest,8) = x7Test;

predictedValues = xValues*W;
meanSquareError = sqrt(mean((predictedValues-yTest).^2))
% Our mean square values for our linear and the net for real estate are much closer to 0
% since the data is not random but instead follows a pattern
