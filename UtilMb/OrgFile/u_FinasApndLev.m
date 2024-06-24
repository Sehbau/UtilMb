% 
% Same as u_FinasApnd, but we prepend the level to each fipa.
%
function aColl = u_FinasApndLev(aColl, aIn, lev)

for i = 1:length(aIn)
    
    aColl = [aColl; 'Lev' num2str(lev) '/' aIn(i).name];
end


