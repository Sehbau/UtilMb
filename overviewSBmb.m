%
% Overview of Matlab scripts that run a process or demo
%

%% ------  Descriptor Extraction  ------
cd('c:/klab/ppc/PROD/DescExtr');
runDsc1

%% ------  Focus Extraction  ------
cd('../FocExtr');
runFocxv1
runFocxh1
runFocxhL
runFocVecFew
runFocHstFew

%% ------  Matching Vectors/Histograms  ------
cd('../MtchVec');
runMvec1
runMvecL
cd('../MtchHst');
runMhstL

%% ------  Demo Place Recognition  ------
cd('../DemoPlcRec');
plcDscx
plcMtcImg
plcDscxZon
plcMtcZon

%% ------  Demo Tree  ------
cd('../DemoBaum');
run1farb
run1img

