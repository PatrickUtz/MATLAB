% ****Two-input Single-output Neural Network Example 3****

clear
% Step 1: Data Generation
[x1,x2,y] = generate();

% Step 2: Partition Data
hiddenLayerSize = 1;
net = fitnet(hiddenLayerSize);

net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

x(:,1) = x1;
x(:,2) = x2;
inputs = x';
targets = y';

% Step 3: Training the Neural Network
[net, train] = train(net, inputs, targets);

% Step 4: Performance Evaluation
outputs = net(inputs);
errors = gsubtract(outputs,targets);
meanSquareError = perform(net,targets,outputs)

% Step 5: Visualization of Neural Network Model
view(net);

