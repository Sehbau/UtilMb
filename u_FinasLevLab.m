% 
% Creates filename paths and directory names for ONE level and ONE label.
% From u_FinasLevLab
%

function U = u_FinasLevLab(pth, lev, lab)

fprintf('depreciated. use other functison instead');
dbstop 11

U.dirLev    = [pth 'Lev' num2str(lev) '/'];

%U.fnDMself  = u_FipaDMLevLab(pth, lev, lab); 
% [pth 'DM'  num2str(lev) '/Lab' num2str(lab)];

U.fnListLev = sprintf('Util/FinasLev%d.txt', lev);
U.fnMtchRes = sprintf('Util/MtchResLev%d.txt', lev);

end

