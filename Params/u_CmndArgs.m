%
% Structure for passing command line arguments (parameters) responsible for
% descriptor extraction and matching.
%
% Parameter strings verified with v_PrmFileExists. 
% 
% Applied with f_CmndExec
%
% sa u_CmndAdmin
%
% fka u_ArgsCmdLine
%
function Args = u_CmndArgs()

Args.prmFileDsc = '';   % expects 'Desc*', paramsToFile.m
Args.prmFileMtc = '';   % expects 'Mtch*'
Args.archit     = '';   % descriptor extraction and architecture

end

