% Lindenmayer Iteration

function LindenmayerString = LindIter(System,N)

% Hvis Koch systemet v�lges laves f�lgende erstatning
if strcmpi(System,'koch')
    ko='S';
    for i=1:N
       ko = strrep(ko,'S','SLSRSLS');
    end  
    LindenmayerString=ko;
    
% Hvis Sierpinski
elseif strcmpi(System,'sierpinski')
    si='A';
    for i=1:N
        % Der laves hj�lpestrings for at undg� "dobbelterstatning"
        si = strrep(si,'A','T');
        si = strrep(si,'B','P');
        si = strrep(si,'T','BRARB');
        si = strrep(si,'P','ALBLA');
    end
    LindenmayerString=si;

%Afslut if-statement 
end

% Afslut funktion
end

