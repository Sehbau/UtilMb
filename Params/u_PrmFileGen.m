% 
% Generates parameter filepath.
%
% ai {plcrec}Run.m, ie. lvngRun.m
%
% IN   typ          filename of parameter file
%      pthPrmFile   directory of parameter file
%      kind         'Mtch' or 'Dscx' ?
%
% USE   Args.prmFileMtc = u_PrmFileGen( prmMtcTyp, pthPrmFile, 'Mtch', 1 );
%
function fina = u_PrmFileGen( typ, pthPrmFile, kind, bInclDirProg )

if isempty( typ )
    error('empty typ not permitted anymore');
end

fina = ['Prm' kind '_' typ '.txt'];

%% ---------   verify it exists   ---------
fipaPrmFile = [pthPrmFile fina]; 

%% --------   return with path included   ----------
if nargin==4
    if bInclDirProg
        fina = fipaPrmFile;
    end
end

end

