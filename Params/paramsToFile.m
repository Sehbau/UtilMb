%
% Generates a parameter file. sa savePrmMtc.m
%
clear;
cc_Globals;

Dty     = u_DescTypes();
Finas   = u_FinasPrmMtch();

%% -----  Set Values  -----
%aRgbWgt=u_PrmsDtyVals( Dty.aDty, 'wRgb', [0.75 0.50 0.75 0.75 0.5] ); % def
aRgbWgt=u_PrmsDtyVals( Dty.aDty, 'wRgb', [0.75 0.50 0.75 0.75 0.5]*0.5 );

%aPosWgt=u_PrmsDtyVals( Dty.aDty, 'wPos', [1.0  1.0  0.5  0.75  0.5]); % def
%aPosWgt=u_PrmsDtyVals( Dty.aDty, 'wPos', [1.5  1.5  0.75  1.0  0.75]); % hiher
aPosWgt=u_PrmsDtyVals( Dty.aDty, 'wPos', [2.0  2.0  1.00  1.25  1.00]); % hiher

aPosTol = u_PrmsDtyVals( Dty.aDty, 'tolPos', 0.2 ); 

aMtcTol = u_PrmsDtyVals( Dty.aDty, 'tolMtc', [.025  .025  .025  .025  1.00] ); 
%aMtcTol = u_PrmsDtyVals( Dty.aDty, 'tolMtc', [0.1 0.1 0.1 0.1 0.5] ); 
%aMtcTol = u_PrmsDtyVals( Dty.aDty, 'tolMtc', 0 );  % same value for all

%aDisMax = u_PrmsDtyVals( Dty.aDty, 'disMax', [ 8 10 12 10 10] ); 
aDisMax = u_PrmsDtyVals( Dty.aDty, 'disMax', 20 ); % same value for all

%% -----  Choose one  -----
aPrms = [];
sfn   = [ dirCode dirMtcDsc Finas.rgbWgt ];   aPrms = aRgbWgt;

sfn   = [ dirCode dirMtcDsc Finas.posWgt ];   aPrms = aPosWgt;
sfn   = [ dirCode dirMtcDsc Finas.posTol ];   aPrms = aPosTol;

sfn   = [ dirCode dirMtcDsc Finas.tolMtc ];   aPrms = aMtcTol;

sfn   = [ dirCode dirMtcDsc Finas.disMax];    aPrms = aDisMax;


%% -----  Save  -----
bSave = 0;
if bSave
    SaveParamToFile( sfn, aPrms );
end








