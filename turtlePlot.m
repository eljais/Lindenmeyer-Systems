% Turtle grafics plot function 

function turtlePlot(turtleCommands)
% Længderne samles i vektoren R
% Dette gøres ved angtagelse om at alle længder er ens
L=0.5*(length(turtleCommands)+1);
V=ones(1,L);
r=turtleCommands(1)*V;

% Vinklerne samles i vektoren theta
LtC=(0.5*(length(turtleCommands)-1));
for i=1:(LtC+2)
    turtleCommands(i*2-1)=false;
end
theta=turtleCommands(turtleCommands~=false);
theta=[0 0 theta];
r=[0 r];
theta=cumsum(theta);

% Der omskrives fra polær til katetisk
x=ones(1,length(r));
y=ones(1,length(r));
for i=1:length(r)
    x(i)=r(i)*cos(theta(i));
    y(i)=r(i)*sin(theta(i));
    
end

x=cumsum(x);
y=cumsum(y);
plot(x,y)


% Afslut funktion
end











