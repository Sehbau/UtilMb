%
% Obtains file date and returns a string as output. 
% The function DOES NOT DISLAY!!
%
% IN	fipa    valid file path
% OUT	fd      string with time difference in 'human' form
%
% Usage     str = f_FileDate(fina)
%   	or 	fprintf('Loaded %s [%s].\n', fina, f_FileDate(fina));
function fd = u_FileDate(fipa)

st = dir(fipa);
if isempty(st), 
    st = dir([fipa '.mat']); 
end

if isempty(st),
    fd = 'does not exist - could not determine date';
else
    fd      = st.date; % [st.date(1:6) ' ' st.date(13:17)];
    fd      = fd(1:end-3);  % exclude seconds
    ixCol   = strfind(fd,':');
    
    % --- difference in days
    n_then  = st.datenum;  % datenum(st.date(1:12));    
    n_now   = now;
    durDays = floor(n_now-n_then);
    
    % --- difference in vector format
    %v_then = datevec(st.date(13:17));
    v_then = datevec(st.date(ixCol(1)-2:end));
    dfv    = clock - v_then;    % (Y,M,D,H,MN,S)
    
    if durDays==0, 
        durMin  = dfv(5);   % can be negative if measured across full hour
        durHour = dfv(4);   % only positive if not changed at midnight
        if durMin<0,    durMin  = durMin + 60; end
        if durHour<0,   durHour = durHour + 24; end 
        % less than 60 minutes ago? 
        if abs(durHour)<=1 && abs(durMin)<60,   % it takes BOTH CONDITIONS!!
            %if durMin<0, durMin = durMin + 60; end
            fd = [fd '   ' num2str(durMin) ' min ago'];
        elseif abs(durHour)<12
            fd = [fd '   ' num2str(durHour) ' hours ago'];
        else
            fd = [fd '   past 24h'];
        end
    elseif durDays==1
        fd = [fd '    yesterday'];
    else
        fd = [fd '   ' num2str(durDays) ' days old'];
    end
    
    
end


