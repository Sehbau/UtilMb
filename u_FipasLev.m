% 
% Creates filename paths and directory names for ONE level.
%
% From u_FinasLevLab
%
function U = u_FipasLev(pth, lev)

% absolute:
U.dirLev     = [pth 'Lev' num2str(lev) '/'];
U.fnKist     = [pth 'FinasKistLev' num2str(lev) '.txt'];
U.fnKistXcrr = [pth 'KistXcrrLev' num2str(lev)];

% relative:
U.fnListLev  = sprintf('Util/FinasLev%d.txt', lev);
U.fnMtchRes  = sprintf('Util/MtchResLev%d.txt', lev);

end

