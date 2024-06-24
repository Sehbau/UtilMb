%
% Turns slashes to backslashes in a path. For windows OS.
%
% This is necessary only for program execution (of a binary) or when
% writing to a file. (not necessarily for reading file)
%
% fka u_FipaSlashToBack
%
function fipa = u_PathToBackSlash( fipa, bOSisWin )

if nargin==1,
    bOSisWin = 1;           % otherwise we wouldn't call the function
end

if ~bOSisWin, 
    % no modification necessary
    return; 
end

IxSlash         = strfind( fipa,'/');
fipa(IxSlash)   = '\';

end

