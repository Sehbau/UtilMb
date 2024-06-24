%
% Concatenates fields of struct S to matrix [nFields nEnt].
%
% cf ReadShpHist.m
%
function [A] = u_FieldsCatToMxInt( S )

% --- first as matrix:
A = zeros( S.nFields, S.lenArr, 'int32');

aFldNa = fieldnames(S);
for f = 1:S.nFields
    A(f,:) = S.( aFldNa{f} );
end

end

