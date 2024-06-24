% 
% Verifies that parameter file contains proper identifier and that it
% exists.
%
% sa u_PrmFileGen, paramsToFile.m
%
% sa v_ProgExists.m
%
% ai {plcrec}Run.m, ie. lvngRun.m
%
% Previous version: v_PrmFileExistsV1.m
%
function [] = v_PrmFileExists( fipa )

%% ---------   verify identifier is present   ---------
if ~isempty( strfind( fipa, 'Mtch') )  ||  ~isempty( strfind( fipa, 'Desc') )
    % okay, do nothing
else
    error('filepath %s does not contain ''Mtch'' or ''Desc''', fipa);
end

%% ---------   verify file exists   ---------
if ~exist( fipa, 'file' )

    [ pthFile, name, ext] = fileparts( fipa );

    if ~exist( pthFile, 'dir')
        error( 'filepath %s does not exist', pthFile );
    else        
        error('parameter file %s not found. paramsToFile.m ?', fipa );
    end
    
end

end

