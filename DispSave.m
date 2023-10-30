function [] = DispSave(sfn, bIndent)

if exist('bIndent'),
    fprintf('SSSSSSSSSSSSSSSSSSSSaved  %s\n', sfn);
else
    fprintf('Saved  %s\n', sfn);
end