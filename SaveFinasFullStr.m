%
% Same as SaveFinasFullDir but the input list is made of strings (in a
% cell)
%
function [] = SaveFinasFullStr(sfn, aFina, dirNa)

%% =====  Opening File  =====
fid = fopen(sfn, 'w');

if fid==-1, error('SaveFinasFullStr: could not write to %s\n', sfn); end
    
%% -----  Write Filenames  -----
for i = 1:length(aFina)
    fprintf(fid, '%s%s\n', dirNa, aFina{i});
end

%% =====  Close File  =====
fclose(fid);
    
% DispSave(sfn);

end

