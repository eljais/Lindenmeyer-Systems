function turtleCommands = turtleGraph(LindenmayerString, System ,N)


turtleCommands=zeros(1, length(LindenmayerString));

if strcmpi(System,'koch')


Length = (1/3)^(N);

turtleCommands(LindenmayerString == 'S') = Length;
turtleCommands(LindenmayerString == 'L') = 2*pi/6;
turtleCommands(LindenmayerString == 'R') = -4*pi/6;


elseif strcmpi( 'sierpinski', System)


Length = (1/2)^(N);

turtleCommands(LindenmayerString == 'A') = Length;
turtleCommands(LindenmayerString == 'B') = Length;
turtleCommands(LindenmayerString == 'L') = 2*pi/6;
turtleCommands(LindenmayerString == 'R') = -2*pi/6;


else 

disp('invalid system')

end
end