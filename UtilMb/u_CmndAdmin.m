%
% Utility structure for arguments passed to programs, such as dscx, mvec,
% focx.
%
% cf runXXX, ie. ...  (lvngRunDscx...?)
%
% fka u_ProgExecAdmin
% 
% Struct is passed to Renn functions such as:
% - RennDscx.m
% - RennMvec1.m
% - RennMvecL.m
% - RennFocxv1.m
% - ...
% 
function A = u_CmndAdmin( )

A.pthProg   = '';       % path to program

% options as string. set manually or with o_OptXXX, i_OptXXX
A.optS      = '';       

A.bOSisWin  = 1;

end

