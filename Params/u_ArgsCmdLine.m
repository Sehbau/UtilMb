%
% Structure for passing command line arguments (parameters) responsible for
% descriptor extraction and matching.
% 
% Parameter strings verified with v_PrmFileExists. 
% Applied with f_ExecCommand.
% sa u_CmndAdmin
%
function Args = u_ArgsCmdLine()

Args.prmFileDsc = '';   % expects 'Desc*'
Args.prmFileMtc = '';   % expects 'Mtch*'
Args.archit     = '';   % descriptor extraction and architecture

end

