%
% Shape matching parameters. Must match with ShpMtcAnfAbst.h. Fieldnames
% are used for verification. 
%
% DONT change anything here. Change parameter values through u_PrmShpUsr.m
% for example.
%
% Values are some defaults. Not necessarily the same as in include file.
%
function [U] = u_PrmShpUsr( v )

U.tolRgb = v;

aFldNa   = fieldnames( U );
nFldNa   = length(aFldNa);

S = u_PrmShpDef();

S.aF

if 0

U.wRad      = 0.75 ;
U.wAre      = 0.75 ;
U.wVrt      = 0.75 ;
U.wHor      = 0.75 ;
U.wAxi      = 0.75 ;

U.wElo      = 0.75 ;
U.wPos      = 0.50 ;
U.wRgb      = 0.50 ;

U.tolMtc    = 0.50 ;
U.tolRad    = 0.50 ;
U.tolAxi    = 0.50 ;
U.tolAreRel = 0.50 ;

end

U.tolPos    = 0.60 ;
U.disMax    = 10.0 ;


end

