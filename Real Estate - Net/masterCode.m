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
hiddenLayerSize = 1;
net = fitnet(hiddenLayerSize);

inputs = normalizedData(:,1:6)';
targets = normalizedData(:,8)';

net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Step 3: Training the Neural Network
[net, train] = train(net, inputs, targets);

% Step 4: Performance Evaluation
outputs = net(inputs);
errors = gsubtract(outputs,targets);
meanSquareError = perform(net,targets,outputs)

% Step 5: Visualization of Neural Network Model
view(net);