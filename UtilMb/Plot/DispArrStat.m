%
% Display array statistics as calculated with f_ArrStat.m
%
% exists also a DispStatArr.m
%
function [] = DispArrStat(S, jStr)

fprintf('%s mmm   %1.2f - %9.2f - %15.2f ', jStr, S.min, S.men, S.max);

fprintf('[nVal %4d  nnz %4d (%1.3f)] ', S.nVal, S.nnz, S.prpNnz);
if S.bInf
    fprintf('#inf %3d ', S.nInf);
end
fprintf('\n');

end

