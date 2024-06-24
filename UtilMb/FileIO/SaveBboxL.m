%
% Saves bounding boxes for stcBboxL (in C), with or without header (nBbxs).
%
% IN   sfn      filename 
%      Bbx      list of bboxes [nBbox 4]
%      bHeadIn  [optional]. boolean for writing header info.
%
function [] = SaveBboxL( sfn, Bbx, bHeadIn )

%% -----  Arguments  -----
bHead   = 0;                    % default is writing NO header 
if nargin>2, bHead=bHeadIn; end % user input

%% -----  Verify Bboxes  -----
[nBbx nPrm] = size(Bbx);
if nPrm>4
    fprintf('ignoring parameters 5-\n');
elseif nPrm<4
    error('found only %d parameters', nPrm);
end
fprintf('Writing %d boxes to file (header %d)...', nBbx, bHead);

%% =====  Opening File  =====
fid = fopen(sfn, 'w');

if fid==-1, error('Could not write to %s\n', sfn); end
    
%% -----  Header  -----
if bHead
    fprintf(fid, '%d\n', nBbx);
end

%% -----  Bboxes  -----
for i = 1:nBbx
    Bx = int16(Bbx(i,:));
    fprintf(fid, '%d %d %d %d\n', Bx(1), Bx(2), Bx(3), Bx(4));
end
fclose(fid);
    
DispSave(sfn);
    
end