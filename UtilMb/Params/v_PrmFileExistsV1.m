% 
% Verifies that parameter file exists and creates proper filename.
%
% sa v_ProgExists.m
%
% ai {plcrec}Run.m, ie. lvngRun.m
%
function fina = v_PrmFileExistsV1( typ, dirProg, kind, bInclDirProg )

if isempty( typ )
    fina = '';
    return;
end

if strcmp(kind, 'Mtch') ||  strcmp(kind, 'Desc')
    % okay, do nothing
else
    error('kind (3rd arg) must be either ''Mtch'' or ''Desc''');
end

fina = ['Prm' kind '_' typ '.txt'];

%% ---------   verify it exists   ---------
fpPrmFile = [dirProg fina]; 
if ~exist( fpPrmFile )
    error('parameter file %s not found. paramsToFile.m ?', fpPrmFile );
end

%% --------   return with path included   ----------
if nargin==4
    if bInclDirProg
        fina = fpPrmFile;
    end
end

end

