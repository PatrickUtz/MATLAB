% for l = 1:3
%     fprintf('%d \n', l);
%     for m = 1:3
%         fprintf('%d ', l*m)
%     end
% end
% 
% for n = 1:3
%     array(n,(n+1):end) = 0;
% end
% 
% fprintf('\n\n\n');
% 
% for l = 1:3
%     fprintf('%d ', l:l:(l*l));
%     fprintf('\n')
% end
% fprintf('\n\n\n');


% testArray = [520 100 1001 2000];

% clear
% usages = 0:1500;
% payments = billing(usages);
% plot(usages,payments);
% xlabel('Usages (in Electrical Units)');
% ylabel('Payments (in USD $)');
% title('Payments vs Usages for Electricity');
% legend('Main Trend of Payments vs Usages')

clear
x = 1:10;
y = [];
for n = 1:length(x)
    y(n) = 0;
    for l = 0:(2-1)
        if (n-l) > 0
        y(n) = y(n) + x(n-l);
        else
            break;
        end
    end
    y(n) = (y(n)) * (1/2);
end 
y




