% datagen.m
% Patrick Utz, 3/23/18, 10.4

function subjects = datagen(N)
% datagen generates and returns (as output arguments) a structure array 
% of N subjects, where N is the input argument. The names of the subjects
% can be generated from the 26 alphabets randomly with 3 ? 8 letters (all
% in lower case). The id is simply the index of the subject in the 
% structure array. The heights of the subjects is uniformly distributed 
% random numbers between 5.5 and 6.8; The weights of the subjects is 
% uniformly distributed between 90 and 250
% Format of call: datagen( N number of subjects )
% Returns structure array of N subjects

alphabet = ['a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n'...
    'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z'];
for k = 1:N
    name = alphabet(randi([1,26],1,randi([3,8])));
    height = (6.8-5.5)*rand+5.5;
    weight = (250-90)*rand+90;
    subjects(k) = struct('Name',name,'Id',k,'Height',height,'Weight',weight);
end
end