%
% Same as SaveFinaLstFromDir but the input list is made of strings (in a
% cell)
%
function [] = SaveFinaLstFromCell( aFina, pth, sfn)

%% =====  Opening File  =====
fid = fopen(sfn, 'w');

if fid==-1, 
    error('SaveFinaLstFromCell: could not write to %s\n', sfn); 
end
    
%% -----  Write Filenames  -----
for i = 1:length(aFina)
    fprintf(fid, '%s%s\n', pth, aFina{i});
end

%% =====  Close File  =====
fclose(fid);
    
end

