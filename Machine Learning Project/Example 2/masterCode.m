clear;

% ****Multiple Linear Regression Example 2****

% Step 1: Data Generation
[x1,x2,y] = generate();

% Step 2: Data Partition
[x1Train,x2Train,yTrain,numTrain,x1Test,x2Test,yTest,numTest] = partition(x1,x2,y);

% Step 3: Linear Regression
[W] = regression(x1Train,x2Train,yTrain,numTrain);

% Step 4: Performance Evaluation
xValues(1:numTest,1) = 1;
xValues(1:numTest,2) = x1Test;
xValues(1:numTest,3) = x2Test;
predictedValues = xValues*W;
meanSquareError = sqrt(mean((predictedValues-yTest).^2));
% The values for W1, W2, and b were within .5 consistently

% Step 5: Visualization of Data and Model
scatter3(x1Test,x2Test,yTest, 'o');
hold on
bPredict = W(1);
w1Predict = W(2);
w2Predict = W(3);
fsurf(@(x1,x2) bPredict+w1Predict*x1+w2Predict*x2, [-5,5]);
zlabel('y = W(1) + W(2)*x1 + W(3)*x2');
title('Multiple Linear Regression Example 2: Fitting Training Data');
xlim([-5 5])
hold off