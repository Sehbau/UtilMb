%
% Creates bounding box parameters for a number of image partitions, called
% zones here. Values are for zero-indexing in lang C.
%
% IN   szM    map size
% OUT  S      struct with zones
%
function S = u_ZonesBboxes(szM)

%% ----------   Overlapping   ----------
Z3 = uu_ZonesOlap(szM, 3);
S.HorzOla3 = Z3.HorzOlap;
S.VertOla3 = Z3.VertOlap;

Z4 = uu_ZonesOlap(szM, 4);
S.HorzOla4 = Z4.HorzOlap;
S.VertOla4 = Z4.VertOlap;

%% -----------    Separate   ---------
Z3 = uu_ZonesSepr(szM, 3);
S.HorzSep3 = Z3.HorzSepr;
S.VertSep3 = Z3.VertSepr;

Z4 = uu_ZonesSepr(szM, 4);
S.HorzSep4 = Z4.HorzSepr;
S.VertSep4 = Z4.VertSepr;

end % MAIN

%% ===============   uu_ZonesOlap   ===============
% Overlapping zones (bands)
%
function S = uu_ZonesOlap(szM, nZon)

szV     = szM(1);
szH     = szM(2);

Bx      = zeros(nZon,4,'int16');
HorSpc  = round( linspace(0,szH+1,nZon+2) );
for b = 1:nZon                   % -----  vertical  -----
    Bx(b,:)  = [0  szV  HorSpc(b) HorSpc(b+2)-1]; 
end
S.VertOlap  = Bx;

VerSpc  = round( linspace(0,szV+1,nZon+2) );
for b = 1:nZon                   % -----  horizontal  -----
    Bx(b,:)  = [VerSpc(b)  VerSpc(b+2)-1  0  szH]; 
end
S.HorzOlap  = Bx;

end % SUB

%% ===============   uu_ZonesSepr   ===============
% Separate zones (bands)
%
function S = uu_ZonesSepr(szM, nZon)

szV     = szM(1);
szH     = szM(2);

Bx      = zeros(nZon,4,'int16');
HorSpc  = round( linspace(0,szH+1,nZon+1) );
for b = 1:nZon                   % -----  vertical  -----
    Bx(b,:)  = [0  szV  HorSpc(b) HorSpc(b+1)-1]; 
end
S.VertSepr = Bx;

VerSpc  = round( linspace(0,szV+1,nZon+1) );
for b = 1:nZon                   % -----  horizontal  -----
    Bx(b,:)  = [VerSpc(b)  VerSpc(b+1)-1  0  szH]; 
end
S.HorzSepr  = Bx;

end % SUB
