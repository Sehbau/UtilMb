% 
% Appends a list of identifiers (labels) to ONE filename, e.g. the
% different image partitions obtained from bounding box zones.
%
% Same as u_FinaApndIdf, but for a list (L).
%
function aL = u_FinaApndIdfL( fipth, aLab, sepIN )

[pathstr, name, ext] = fileparts( fipth );

if nargin==2
    sep = '_';
else
    sep = sepIN;
end

nLab  = length(aLab);
aL    = cell(nLab,1);
for i = 1:nLab
    
    aL{i} = [ pathstr  '/'  name  sep  aLab{i}  ext ];

end


