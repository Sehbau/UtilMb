% 
% Determine if some options have not been recognized
%
% IN    Sto   standard out
% OUT   []
%
function [] = u_StdOutOptUnrec(Out)

ixUrecOpt  = strfind(Out, 'unrecognised option');

if ~isempty( ixUrecOpt )
    Out
    error('unrecognized option');
end

end

