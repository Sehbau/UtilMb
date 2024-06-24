% 
% Generates a list of parameter names and their values for descriptor types
% in 'Dty' and parameter name 'prm' from array | scalar 'Val'.
%
% prm string must match string as provided in C, ie. prmCntMtcLab
%  
% ui paramsToFile.m
%
function As = u_PrmsDtyVals( aDty, prm, Val )

%% -----  IN   -----
nDty = length( aDty );
nVal = length( Val );

bScalar = nVal==1;                % scalar or array

if ~bScalar
    if nVal~=nDty
        aDty
        Val
       error('# of values (%d) must match # of desctypes (%d)', nVal, nDty);
    end
end

%% -----  OUT   -----
As   = cell(nDty, 1);

%% -----  Generate Parameter Lines  -----
for t = 1:nDty

    if bScalar
        As{t} = sprintf('%s.%s    %1.3f', aDty{t}, prm, Val);
    else
        As{t} = sprintf('%s.%s    %1.3f', aDty{t}, prm, Val(t));
    end
end


end

