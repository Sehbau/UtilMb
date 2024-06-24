%
% Shape matching parameters. Must match with ShpMtcAnfAbst.h. Fieldnames
% are used for verification. 
%
% DONT change anything here. Change parameter values through u_PrmShpUsr.m
% for example.
%
% Values are some defaults. Not necessarily the same as in include file.
%
function [S] = u_PrmShpDef( )

S.wRad      = 0.75 ;
S.wAre      = 0.75 ;
S.wVrt      = 0.75 ;
S.wHor      = 0.75 ;
S.wAxi      = 0.75 ;

S.wElo      = 0.75 ;
S.wPos      = 0.50 ;
S.wRgb      = 0.50 ;

S.tolMtc    = 0.50 ;
S.tolRad    = 0.50 ;
S.tolAxi    = 0.50 ;
S.tolAreRel = 0.50 ;

S.tolPos    = 0.60 ;
S.disMax    = 10.0 ;

S.aFldNa   = fieldnames( S );

end

