%
% Saves a list of strings in cell 'aStr' to filename 'sfn' as text
%
% cf paramsToFile.m
%
function [] = SaveParamToFile( sfn, aStr )

if isempty( aStr )
    error( 'aStr is empty' );
end

fid = fopen(sfn, 'w');

%% write the lines to text
if fid, 
    
    for l = 1:length(aStr)
        fprintf(fid, '%s\n', aStr{l} );
    end
    
    fclose(fid);
    DispSave( sfn );
else
    error('Could not write to %s. fid = %d\n', sfn, fid); 
end