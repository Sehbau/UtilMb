%
% Paths, directories and global variables for Sehbau
% 
% dirXXX    relative path
% pthXXX    absolute (full) path
% fipaXXX   file path: fullpath | relpath + filename 
%
% sa cc_Globals.m
%
bOSISWIN        = 1; % OS is windows. required for u_PathToBackSlash

%% ------   Root   ------
rootSehBau      = 'c:/klab/ppc/PROD/';

%% ------   Basic Dirs   ------
addpath( genpath( [rootSehBau 'UtilMb'] ) );
%addpath([rootSehBau 'UtilMb/Params/']);
%addpath([rootSehBau 'UtilMb/FileIO/']);

%% ------   Dirs to Programs (and Demos)   ------
DirProg.descExtr = 'DescExtr/';
DirProg.mtchVec  = 'MtchVec/';
DirProg.mtchHst  = 'MtchHst/';
DirProg.focExtr  = 'FocExtr/';
DirProg.plcRec   = 'DemoPlcRec/';

%% ------   Paths to Programs (prepends root)   ------
aFnDirs     = fieldnames( DirProg );
for f = 1 : length(aFnDirs)
    fn      = aFnDirs{f};
    PthProg.(fn) = [ rootSehBau DirProg.(fn) ];
    
    if bOSISWIN
        PthProg.(fn)   = u_PathToBackSlash( PthProg.(fn) ); 
    end
end

%% ------   Filepaths of Executables   ------
FipaExe.dscx   = [ PthProg.descExtr 'dscx' ];
FipaExe.mvec1  = [ PthProg.mtchVec  'mvec1' ];
FipaExe.mvecL  = [ PthProg.mtchVec  'mvecL' ];
FipaExe.mhstL  = [ PthProg.mtchHst  'mhstL' ];
FipaExe.focxv1 = [ PthProg.focExtr  'focxv1' ];
FipaExe.focxh1 = [ PthProg.focExtr  'focxh1' ];
FipaExe.focxhL = [ PthProg.focExtr  'focxhL' ];


%% ------   Subdirectories  ------
addpath( PthProg.descExtr );
addpath( genpath( [ PthProg.descExtr 'UtilMb/' ] ) );
%addpath([PthProg.descExtr 'UtilMb/OrgFile/']);
%addpath([PthProg.descExtr 'UtilMb/Vect/']);
%addpath([PthProg.descExtr 'UtilMb/Vect/FileRead/']);
%addpath([PthProg.descExtr 'UtilMb/Vect/OrgAtt/']);
%addpath([PthProg.descExtr 'UtilMb/Vect/Plot/']);
%addpath([PthProg.descExtr 'UtilMb/Hist']);
%addpath([PthProg.descExtr 'UtilMb/Bon']);
%addpath([PthProg.descExtr 'UtilMb/Bbox']);

addpath( PthProg.mtchVec );
addpath( genpath( [ PthProg.mtchVec 'UtilMb/' ] ) );

addpath( PthProg.mtchHst );
addpath( genpath( [ PthProg.mtchHst 'UtilMb/' ] ) );

addpath( PthProg.focExtr );
addpath( genpath( [ PthProg.focExtr 'UtilMb/' ] ) );

%% ------   Other Directories   ------
%pthCodeTst   = 'c:/klab/ppc/';
%addpath( [pthCodeTst 'G_KNN/BaseMvecMb/'] );
%addpath( [pthCodeTst 'IMGPROC/BoundBox/UtilMb/'] );

