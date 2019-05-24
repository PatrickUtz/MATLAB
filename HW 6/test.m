% M = 1;
% intN = 4;
% total = 0;
% if M < 1
%     fprintf('Please enter an upper bound greater than 1\n');
% else
%     while total <= M 
%         for k = 1:intN
%             total = total + (2*k)^2 - ((2*k+1)/(2*k-1));
%         end
%         total
%     intN = intN + 1;
%     end
%     N = intN - 1;       
% end

% testMatrix = [16 2 3 13; 5 11 10 8; 9 7 6 12; 4 14 15 1]
total = (1.^(1:5))
a = sum(total)
