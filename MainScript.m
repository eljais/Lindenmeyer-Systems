%Initialisers
%We create a new variable, sId, that we assign the value -1. When an option
%is chosen in the menu, the value of sId changes. This is to control that
%the "Generate Plots" option is not chosen without having a Lindenmayer
%system chosen first.
sId = -1;
system = 'Choose your system';
%We create a while loop for the menu. As long as it is running, the menu is
%open to make choices. When the "quit" option is chosen, the while loop is
%broken.
while true
    %menu to choose between picking a system, generating plots for the
    %chosen system, or terminating the menu.
    choice = menu('Please choose an option:','Type of system', 'Generate plots', 'Quit');
    
    
    % error message for when you try to run some of the functions without loading system.
    if sId == -1 && (choice == 2)
        disp('Please choose a type of Lindenmeyer system first: ');
        roadblock= imread('gandalf.jpg');
        image(roadblock);
    else
             
        
        % main menu
        switch choice
            
            case 1
                % Lindenmeyer System
                % id to check if there was a system loaded
                sId = menu(system,'Koch curve', 'Sierpinski triangle');
                
                %Sub system menu
                %We make an if statement to check for the value entered
                %into sId. If the first one is chosen, that is the koch
                %curve, it is initialized and the user is prompted for the
                %amount of iterations.
                %The value of iterations is entered into the variable N,
                %which is rounded to the nearest integer.
                if sId == 1
                    System = 'koch';
                    disp('You have chosen the Koch curve!')
                    N = inputdlg('Please enter amount of iterations: ','s');
                    N = str2double(N);
                    N = round(N);
                    %We check to make sure the value of N is an integer
                    %between 0 and 15. When we go above 15, matlab might
                    %crash due to how quickly the system expands per
                    %iteration.
                    while N < 0 || N >= 15 || isnan(N)    
                    N = inputdlg('Please choose an integer between 0 and 15: ','s');
                    N = str2double(N);
                    N = round(N);
                    end
                    LindenmayerString=LindIter(System,N);
                elseif sId == 2
                    %The same procedure is repeated for the sierpinski
                    %system as the koch system.
                    System = 'sierpinski'
                    disp('You have chosen the Sierpinski triangle!');
                    N = inputdlg('Please enter amount of iterations: ','s');
                    N = str2double(N);
                    N = round(N);
                    while N < 0 || N >= 15 || isnan(N)
                        disp('Please choose an integer between 0 and 15!');
                        N = inputdlg('Please choose an integer between 0 and 15: ','s');
                        N = str2double(N);
                        N = round(N);
                    end
                    LindenmayerString=LindIter(System,N);
                    
                end
               
                turtleCommands = turtleGraph(LindenmayerString,N);
                
            case 2
                %We define a new variable, Kris, which is assigned the
                %value of the chosen system.
                if strcmp(System,'koch')
                    Kris = 'Koch curve';
                elseif strcmp(System,'sierpinski')
                    Kris = 'Sierpinski triangle';
                end
                % Generate plots
                turtlePlot(turtleCommands);
                %The title of the plot depends on the value of Kris, that
                %is the chosen system. The amount of iterations is stored
                %in the value N, and converted to a string in the title.
                title(['Plot of ', Kris, ' with iterations = ', num2str(N)]);
                
            case 3
                
                % Quit (ends the while loop)
                
                break
        end
    end
    
end
disp('Success!')
clear