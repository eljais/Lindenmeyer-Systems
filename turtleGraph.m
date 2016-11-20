% This function uses the input, LindemayerString, and replaces the letters
% with the apropriate lengths and angles, depending on the type of system
% and number of iterations.
% The reason that I included the number of iterations as an input, is
% because it saves A LOT of processing power by having it given, instead of
% calculating it from the string given.
function turtleCommands = turtleGraph(LindenmayerString ,N)

%start by making an empty vector that will be filled
turtleCommands = zeros(1, length(LindenmayerString));

%initialise the first step for the while loop
k = 1;

% this while loop is to determine the type of system we are using
while true
    
    % an if statement to determine if it's a koch curve
    if strcmpi(LindenmayerString(k), 'S')
        
        %Calculates the length, s, from the number of iterations
        Length = (1/3)^(N);
        
        % Fills the empty zeros vector with the appopriate lengths and angles
        turtleCommands(LindenmayerString == 'S') = Length;
        turtleCommands(LindenmayerString == 'L') = 2*pi/6;
        turtleCommands(LindenmayerString == 'R') = -4*pi/6;
        
        break
        % an if statement to determine if it's a sierpinski triangel
        
    elseif strcmpi(LindenmayerString(k), 'A') || strcmpi(LindenmayerString(k), 'B')
        %Calculates the length, A and B, from the number of iterations
        Length = (1/2)^(N);
        
        % Fills the empty zeros vector with the appopriate lengths and angles
        
        turtleCommands(LindenmayerString == 'A') = Length;
        turtleCommands(LindenmayerString == 'B') = Length;
        turtleCommands(LindenmayerString == 'L') = 2*pi/6;
        turtleCommands(LindenmayerString == 'R') = -2*pi/6;
        
        break
       
 % incase a string with no 'A's 'B's or 'S' is found
        
    elseif k > length(LindenmayerString)
        
        disp('invalid string. No system could be identified');
        
    else
        %step
        k = k+1;
    end
end
end