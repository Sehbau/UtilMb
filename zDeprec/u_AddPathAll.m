%
% Adds all paths
%
error( 'depreciated ');
function [] = u_AddPathAll(dirB)

dirDscXtr  = [dirB '/DescExtr/'];

addpath( dirDscXtr);
addpath([dirDscXtr 'UtilMb/']);
addpath([dirDscXtr 'UtilMb/Vect']);
addpath([dirDscXtr 'UtilMb/Hist']);
addpath([dirDscXtr 'UtilMb/Bon']);
addpath([dirDscXtr 'UtilMb/Bbox']);
addpath([dirDscXtr 'UtilMb/Plot']);

addpath([dirB '/UtilMb/']);

end

