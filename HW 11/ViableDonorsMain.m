% ViableDonorsMain.m
% Patrick Utz, 4/23/18, 11.1
 
% Variables: candData = inputted candidate data; tempX = temporary arrays
% used for indexing through cell arrays; viable = viable donors

clear

candData = readinfo('donorcandidates.dat');
h = 1;
for k = 1:length(candData)
    temp = candData{k};
    if (str2double(temp{5}) >= 90 && str2double(temp{5}) <= 119) && ... 
        (str2double(temp{6}) >= 60 && str2double(temp{6}) <= 79)
        viable{h} = temp;
        h = h+1;
    end
end
writetable(viable,'viabledonors.dat')
type('donorcandidates.dat')
type('viabledonors.dat')
