% printdata.m
% Patrick Utz, 3/23/18, 10.4

function printdata(subjects, avgHeight, avgWeight)
% printdata prints the generated subjects and the results to the screen  
% Format of call: printdata()
% Returns cell array with individual words

fprintf('Name \t\t\tID \t\t Height \t\tWeight \n')
qualified = {};
for k = 1:length(subjects)    
    if subjects(k).Height < avgHeight || subjects(k).Weight < avgWeight
        qualified(length(qualified)+1) = {subjects(k).Name};
    end
    fprintf('%s \t\t\t%d \t\t %#1.1f \t\t\t% #1.1f \n', subjects(k).Name, subjects(k).Id, subjects(k).Height, subjects(k).Weight);
end
fprintf('Average height is %#1.1f\nAverage weight is %#1.1f\nEligible subjects are: %s',avgHeight,avgWeight,'')
disp(qualified)

end