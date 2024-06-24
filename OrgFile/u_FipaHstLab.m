% 
% Filepaths for histograms of labels.
%
function fipa = u_FipaHstLab(pth, lab)

fipa.all  = [pth '/Lab' num2str(lab)];
fipa.sel  = [pth '/Lab' num2str(lab) '_cls'];

end

