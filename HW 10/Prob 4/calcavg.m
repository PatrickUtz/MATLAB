% calcavg.m
% Patrick Utz, 3/23/18, 10.4

function [avgHeight, avgWeight] = calcavg(subjects)
% calcavg calculates the average height and weight of all subjects and 
% returns them as output arguments 
% Format of call: calcavg( structure array of subjects )
% Returns average height and weight of all subjects

avgHeight = sum([subjects.Height])/length(subjects);
avgWeight = sum([subjects.Weight])/length(subjects);
end