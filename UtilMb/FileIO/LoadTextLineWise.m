%
% Reads a text file linewise
%
function [aLines cL]= LoadTextLineWise( lfn ) 

fileID   = fopen(lfn, 'r');

if fileID<0, error('Could not open file %s', lfp); end

aLines  = cell(0,1);

tline   = fgetl(fileID);        % read first line
cL      = 0;
while ischar(tline)
    
    cL = cL+1;
    aLines{cL} = tline;

    tline = fgetl(fileID);
end

fclose(fileID);

end


