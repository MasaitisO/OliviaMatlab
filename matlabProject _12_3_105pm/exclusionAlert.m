function [numDaysMissed] = exclusionAlert(numDaysMissed)
%This function serves to provide the user with a warning of how many days
%of training the participant is able to miss and still participate in
%the study.

%   The user may check to see if a participant is still eligible to
%   participant in the study by checking the number of absences at training
%   sessions.This function will display the number of absences the
%   participant has had as well as the total number of absences allowed. 

numDaysMissed = numDaysMissed
disp('You are allowed 3 total absences')
end

