%Olivia Masaitis

%Matlab Project

%The goal of this project is to build the foundation of a tool I can continue
%to use and build upon in the data collection process of my thesis.It will
%be able to accept input from the user: participant ID, exercise number, as
%well as the number of sets and reps per exercise. 
%it will then display each exercise by number along with corresponding sets and reps. The data will
%then be represented in bar graphs and exported into an excel spreadsheet.

olivia = 01;
kelsey = 02;
hannah = 03;

%stores 3 in the variable numOfParticipants
numOfParticipants = 3;

%matrix of participant names
names = ["olivia", "kelsey", "hannah"];
str = string(names);

%matrix of exercise names
exercise = ["squat", "lunge", "lateralJump"];
str = string(exercise);

%makes a matrix of zeros as place holders for exercises, sets, reps and participantIDs
%for values to be stored in later
exercises = zeros(3,1);
sets = zeros(3,1);
reps = zeros(3,1);
participantIDs = zeros(3,1);

%displays message to user regarding participants and prompts them to input
%participant ID.
disp('olivia is participant 1, kelsey is participant 2, hannah is participant 3')
participantsPerDay = (1:3);
for i = 1:length(participantsPerDay)
    participantIDs(i,1) = input('Enter participant ID (1-3) see list above: ')
    
    %checks input for valid response.
    if ((participantIDs <1)|(participantIDs >3))
        disp('Invalid response. Enter a number (1-3): ')
        participantID = true;
    else
        particpantID = false;
        exercisesPerDay = (1:3);
        
        %checks input for valid response
        checkInput = true;
        while(checkInput)
            numDaysMissed = input('Enter 0 if participant was present and 1 if participant was absent: ')
            %if present execute the following code
            if (numDaysMissed == 0)
                squat = 01;
                lunge = 02;
                lateralJump = 03;
                
                
                checkInput = false;
                
                %displys message reagrding exercises and prompts user to
                %input number for: exercise, sets and reps. 
                for k = 1:length(exercisesPerDay)
                    disp('squat is exercise 1, lunge is exercise 2, lateralJump is exercise 3')
                    exercises(k,1) = input('Enter exercise number (1-3) see list above:')
                    sets(k,1)= input('Enter number of sets (2-3): ')
                    reps(k,1) = input('Enter number of repititions (5-10): ')
                    
                    
                end
          %stores values for:exercises, sets and reps in a variable named exerciseData for each participant.    
      exerciseData = [exercises, sets, reps];
      if i == 1
          exerciseData1 = exerciseData
      elseif i == 2
          exerciseData2 = exerciseData
      else
          exerciseData3 = exerciseData
      end                      
                %if participant is absent execute the following code
            elseif (numDaysMissed == 1)
                
                %calls custom function which displays a message to user
                %telling them how many days they have missed and how many
                %they are allowed to miss total.
                [numDaysMissed] = exclusionAlert(numDaysMissed)
                checkInput = false;
                %uses zeros as placeholders when participant is absent
                if i ==1
                    exerciseData1= zeros(3,3);
                elseif i ==2
                    exerciseData2= zeros(3,3);
                else
                    exerciseData3 = zeros(3,3);
                end
            else
                disp('Invalid response. please enter either 1 or 0.')
                checkInput = true;
                
            end
        end
    end
end


%turns exercises row vector into column vector
%stores exercise data from each particiapnt into the appropriate variable
%names to use as column headers when exported
exercises = (1:3)'
OliviaSets = exerciseData1(1:3,2)
KelseySets = exerciseData2(1:3,2)
HannahSets = exerciseData3(1:3,2)
OliviaReps = exerciseData1(1:3,3)
KelseyReps = exerciseData2(1:3,3)
HannahReps = exerciseData3(1:3,3)

%plots 2 bar graphs: 1 for number of sets per exercise by participant, 1
%for number of reps per exercise by participant.
x = (exercises);
y = [OliviaSets, KelseySets, HannahSets];
y2 = [OliviaReps, KelseyReps, HannahReps]
subplot(2,1,1)
bar(x,y), xlabel('numOfExercises'), ylabel('numOfSets'), title('Participant Data')
subplot(2,1,2)
bar(x,y2), xlabel('numOfExercises'), ylabel('numOfReps')
legend('olivia', 'kelsey', 'hannah')

%exports data into an excel spreadsheet
exerciseDataTable = table(exercises,OliviaSets, OliviaReps, KelseySets, KelseyReps, HannahSets, HannahReps); 
writetable(exerciseDataTable, 'participantDataVolleyballStudy.csv')

