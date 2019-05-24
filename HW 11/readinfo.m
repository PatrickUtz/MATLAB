% readinfo.m
% Patrick Utz, 4/23/18, 11.1
 
% Variables: all labeled

function candidatesData = readinfo(fileName)
% readinfo takes one input argument, i.e., the file name where donor
% candidates? information is stored, and reads the information from it, 
% stores all the information in a single variable, and returns that 
% variable as the only output argument. 
% Format of call: readinfo( file name )
% Returns variable containing all the candidates' info 

fid = fopen(fileName,'r'); 
if fid == -1
    disp('File open not successful: donorcandidates.dat') 
else
    disp('File opened successfully: donorcandidates.dat')
    k = 1;
    while feof(fid) == 0
        aline = fgetl(fid);
        [first     next0] = strtok(aline);
        [last      next1] = strtok(next0);
        [type      next2] = strtok(next1);
        [rh        next3] = strtok(next2);
        [systolic  next4] = strtok(next3);
        [diastolic      ] = strtok(next4);
        candidatesData{k} = {first last type rh systolic diastolic};
        k = k+1;
    end
        
    closeresult = fclose(fid);
    if closeresult == 0 
        disp('File closed successfully: donorcandidates.dat')
    else 
        disp('File close not successful: donorcandidates.dat')
    end
end
