%
% Loads a single array of floats (written as text), ie. as saved as xxx
%
function [A] = LoadFltTxt( lfn, nFlt ) 

fid   = fopen(lfn, 'r');
if (fid<0), error('file %s not found', lfn); end

A = fscanf( fid, '%f', nFlt );

fclose(fid);


