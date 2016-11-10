function turtleCommands = turtleGraph(LindenmayerString)

NumberOfL = sum( LindenmayerString == 'S');
NumberOfA = sum( LindenmayerString == 'A');
NumberOfB = sum( LindenmayerString == 'B');
% An if statement to determine the type of system
turtleCommands=zeros(1, length(LindenmayerString));

if NumberOfL >0 && (NumberOfA== 0 && NumberOfB== 0)

Iteration = (1+log(NumberOfL)/log(4));
Length = (1/3)^(Iteration-1);

turtleCommands(LindenmayerString == 'S') = Length;
turtleCommands(LindenmayerString == 'L') = 2*pi/6;
turtleCommands(LindenmayerString == 'R') = -4*pi/6;

disp(turtleCommands)
elseif NumberOfA >0 && NumberOfB > 0 && NumberOfL == 0


Iteration = input('Iteration no:')

Length = (1/2)^(Iteration-1);

turtleCommands(LindenmayerString == 'A') = Length;
turtleCommands(LindenmayerString == 'B') = Length;
turtleCommands(LindenmayerString == 'L') = 2*pi/6;
turtleCommands(LindenmayerString == 'R') = -2*pi/6;
disp(turtleCommands)

else 

disp('invalid system')

end
end