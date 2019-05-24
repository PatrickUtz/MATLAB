%test
clear

inputStr = (["A" "red"; "B" "blue";"C" "canary"])
% for k = 1:length(inputStr);
%     fprintf('%s %s \n', inputStr(k,1), inputStr(k,2))
% end

random = randperm(length(inputStr));
shuffle = strings(1,2);

for k = 1:length(inputStr)
    shuffle(k,:) = inputStr(random(k),:);
end
shuffle