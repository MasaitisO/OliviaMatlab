%Olivia Masaitis

%Matlab Project

%The goal of this project is to build the foundation of a tool I can continue
%to use and build upon in the data collection process of my thesis.It will
%be able to accept input from the user: participant name, day, exercise,
%sets, and reps. Based on the user's request it will then be able to
%display the data by either participant, day, or exercise. The data will
%then be exported into an excel spreadsheet.

olivia = 01
kelsey = 02
ashley = 03
brian = 04
andy = 05
mike = 06
joey = 07
hannah = 08
tarun = 09
patrick = 10
%matrix of participant names
names = ["olivia", "kelsey", "ashley", "brian", "andy", "mike", "joey", "hannah", "tarun", "patrick"];
str = string(names);

%matrix of exercise names
exercise = ["squat", "lunge", "lateralJump", "tuckJump", "scissorJump"];
str = string(exercise);

%matrix of number of days in training program
trainingDay = [1:18];
day = zeros(18,1);

exercises = zeros(5,1);
sets = zeros(5,1);
reps = zeros(5,1);
participantIDs = zeros(2,1); %change to 10,1 after testing
participantsPerDay = (1:2); %change to 1:10 after testing
for i = 1:length(participantsPerDay)
    participantIDs = true;
    while(participantIDs)
        participantIDs(i,1) = input('Enter participant ID (01-10) see list above: ')
        
        if ((participantIDs <1)| (participantIDs >10))
            disp('Invalid response. Enter a number (01-10): ')
            participantIDs = true;
        else
            %prompts user to input the following: participant name, day, exercises (sets
            %& reps).
            
            day = true;
            while(day)
                day = input('Enter day (1-2): ')% change to 1-18 after testing
                if ((day == 1) || (day == 2))
                    day = false;
                else
                    disp('Invalid response. Enter a number (1-2). ')
                    day = true;
                
                exercisesPerDay = (1:5);
            
            %calling custom function
            checkInput = true;
            while(checkInput)
                numDaysMissed = input('Enter 0 if participant was present and 1 if participant was absent: ')
                if (numDaysMissed == 0)
                    squat = 01
                    lunge = 02
                    lateralJump = 03
                    tuckJump = 04
                    scissorJump = 05
                    
                    %asks user for the name of all 5 exercises executed that day,
                    %and for the sets and reps of each of those exercises.
                    
                    for i = 1:length(exercisesPerDay)
                        exercises(i,1) = input('Enter exercise number:')
                        sets = input('Enter number of sets (2-3): ')
                        reps = input('Enter number of repititions (5-10): ')
                        
                     %end of for loop to prompt user for exercise, sets & reps.
                    checkInput = false;
                    
                elseif (numDaysMissed == 1)
                    %             numDaysMissed = numDaysMissed + 1
                    checkInput = false;
                else 
                    disp('Invalid response. please enter either 1 or 0.')
                    checlInput = true; 
                    end 
                end
                end % end of if statement for numDaysMissed
            end % while loop numDaysMissed
        end % ends for loop of participants
    end %while loop for participants
        %calling custom function
        [numDaysMissed] = exclusionAlert(numDaysMissed)
        
        %prompts user to request that data be displayed by either participant, day,
        %or exercise.
        
        dataDisplay = true;
        while(dataDisplay)
            data = input('Enter a method of data display(participant, day, or exercise: ', 's')
            if (strcmp('participant', data))
                disp(names)
                dataDisplay = false;
            elseif (strcmp('day', data))
                disp(trainingDay)
                dataDisplay = false;
            elseif (strcmp('exercise', data))
                disp(exercise)
                disp(sets)
                disp(reps)
                dataDisplay = false;
                
                %             else
                %                 disp('Invalid response. Please enter either participant, day, or exercise.')
                
            end %end of if statement data entry
            
            %         exerciseToSearch = input('Enter exercise:', 's');
            %         for i = 1:length(exercises)
            %             index = i;
            %             if(strcmp(exerciseToSearch, exercises(i,1)))
            %                 disp(sets(i,1))
            %                 disp(reps(i,1))
            %                 break;
            %             elseif(index == length(exercises) && ~strcmp(exerciseToSearch, exercises(i,1)))
            %                 disp('Exercise not found')
            %             else
            %                 disp('Invalid response. Please enter either participant, day, or exercise.')
            %             end
            %         end
            %         dataDisplay = false;
            %
            %     end %end of if statement prompting user for valid input.
            
        end
        % end %end of while loop prompting user for valid input.
end
    end
   
    
    exports data via csv file.
    
    exportdata = [names, exercise, traingDay, day, exercises, sets, reps, participantIDs]
    csvwrite('nameOfFile.csv', exportdata);
