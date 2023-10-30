% 
% Append a list of file names 'aIn' as obtained from command 'dir' (field
% .name) to a total list 'aColl' containing only the name.
%
function aColl = u_FinasApnd(aColl, aIn)

for i = 1:length(aIn)
    
    aColl = [aColl; aIn(i).name];
end


