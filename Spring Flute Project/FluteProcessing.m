clear
[y,Fs] = audioread('flute.wav');
sound(y,Fs);

noise = rand(96375,1)*(1-.5) + .5;
fluteWhiteNoise = noise + y;
sound(fluteWhiteNoise,Fs);

MA_Order_10 = MAfilter(fluteWhiteNoise',10);
sound(MA_Order_10,Fs);

MA_Order_20 = MAfilter(fluteWhiteNoise',20);
sound(MA_Order_20,Fs);

Median_Order_10 = medianFilter(fluteWhiteNoise,10);
sound(Median_Order_10,Fs);

Median_Order_20 = medianFilter(fluteWhiteNoise,20);
sound(Median_Order_20,Fs);

spikeNoise = y;
for k = 1:10
    n = randi([1,length(spikeNoise)]);
    spikeNoise(n) = 3 * y(n); 
end
sound(spikeNoise,Fs);

MA_Order_10_Spike = MAfilter(spikeNoise',10);
sound(MA_Order_10_Spike,Fs);

MA_Order_20_Spike = MAfilter(spikeNoise',20);
sound(MA_Order_20_Spike,Fs);

Median_Order_10_Spike = medianFilter(spikeNoise,3);
sound(Median_Order_10_Spike,Fs);

Median_Order_20_Spike = medianFilter(spikeNoise,5);
sound(Median_Order_20_Spike,Fs);


