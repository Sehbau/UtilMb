%
%  Usage:  DispLoad(fina)
%
function [] = DispLoad(fina, bRet)

fprintf('Loaded %-35s [%5s].', fina, u_FileDate(fina));

if nargin==1, % default is WITH carriage return
    fprintf('\n');
    return; 
end

if bRet==1 % carriage return only if desired
    fprintf('\n');
end
