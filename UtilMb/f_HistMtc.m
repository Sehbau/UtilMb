%
% Histogram difference. Hamming only. For demo purposes only.
%
function dh = f_HistMtc(H1, H2)

%rdg = sum( abs( H1.Rdg-H2.Rdg ) );
%riv = sum( abs( H1.Riv-H2.Riv ) );
%edg = sum( abs( H1.Edg-H2.Edg ) );

skl = sum( abs( H1.Skl-H2.Skl ) );
rsg = sum( abs( H1.Rsg-H2.Rsg ) );
arc = sum( abs( H1.Arc-H2.Arc ) );
str = sum( abs( H1.Str-H2.Str ) );

dh   = skl + rsg + arc + str;

end

