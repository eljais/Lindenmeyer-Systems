%Initialisers
%File Id
sId = -1;
FiltId = 0;
system = 'Vælg system';
while true
    %menu
    choice = menu('Please choose an option:','Type of system', 'Generate plots', 'Quit');
    
    
    %% error message for when you try to run some of the functions without loading system.
    if sId == -1 && (choice == 2)
        disp('Please choose a type of Lindenmeyer system first: ');
        roadblock= imread('gandalf.jpg');
        image(roadblock);
    else
             
        
        %% main menu
        switch choice
            
            case 1
                %% Lindenmeyer System
                % id to check if there was a system loaded
                sId = menu(system,'Koch curve', 'Sierpinski triangle');
                
                %Sub system menu
                if sId == 1
                    System = 'koch'
                    disp('You have chosen the Koch curve!')
                    N = input('Please enter amount of iterations: ')
                    LindenMayerString=LindIter(System,N)
                elseif sId == 2
                    System = 'sierpinski'
                    disp('You have chosen the Sierpinski triangle!')
                    N = input('Please enter amount of iterations: ')
                    LindenMayerString=LindIter(System,N)
                end
               
                if sId == -1
                    disp('404 file not found');
                    
                end
                
            case 2
                %% Generate plots
                turtlePlot(turtleCommannds);
                
            case 3
                
                %% Quit (ends the while loop)
                
                break
        end
    end
    
end
disp('Success!')