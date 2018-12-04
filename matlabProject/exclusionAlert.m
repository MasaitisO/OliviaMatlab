function [numDaysMissed] = exclusionAlert(numDaysMissed)
%This function serves to provide the user with a warning of how many days
%of training the participant is able to miss and still participate in
%the study.

%   The user may check to see if a participant is still eligible to
%   participant in the study by checking the number of absences at training
%   sessions. 

numDaysMissed = numDaysMissed
disp('You are allowed 3 total absences')
end

