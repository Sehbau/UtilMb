%
% Generates and saves a list of filepaths for a set of labels
%
% cf 
%
function ALipas = SaveFipaLstFromDirLst( AFinas, pthFinas, aLab, fistLina )

nLab   = length( aLab );

ALipas = cell( nLab, 1);
for i = 1:nLab
    
    lipa = [ fistLina '_' aLab{i} '.txt' ];
    
    SaveFipaLstFromDir( AFinas{i}, pthFinas, lipa );
    
    ALipas{i} = lipa;
    
end

    
end

