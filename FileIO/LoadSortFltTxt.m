%
% Loads a sorting saved as order/value in two columns, ie. from
% st_SortFlt().
%
function [Ord Vls] = LoadSortFltTxt( lfn, nFlt ) 

formatSpec = '%d %f';

fid   = fopen(lfn, 'r');
if (fid<0), error('file %s not found', lfn); end

A = fscanf( fid, formatSpec, [2 nFlt]);

fclose(fid);

Ord = A(1,:) + 1;   % change to one indexing for Matlab
Vls = A(2,:);


