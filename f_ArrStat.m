%
% Statistics of an array (of floats) ignoring INF values. 
%
% Used for metric measures, attributes, aspects, etc.
%
% Display with DispStatArr
%
function [S] = f_ArrStat( Arr )

Binf    = isinf(Arr);

S.bInf  = any(Binf);
S.nInf  = nnz(Binf);


Arr(Binf) = nan;

S.men   = nanmean(Arr);
S.min   = nanmin(Arr);
S.max   = nanmax(Arr);
S.std   = std(Arr);

S.nVal  = length( Arr );
S.nInf  = nnz( Binf );
S.nnz   = nnz( Arr );
S.prpNnz = S.nnz / S.nVal;

end

