function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Olivia Masaitis
%
%         DUE: November 27
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 10 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced  
%BUG 1. code would not run properly. 
%had level not equal to beginner or moderate or advanced. 
%I changed to level not equal to beginner and moderate and advanced.       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner 
%BUG 2. code would not run properly. 
%had = which assigns a value to a variable. 
%I changed it to == to compare values for equality.                    

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else level == advanced
    
highest = advancedHighest;  
%BUG 8. code would not run properly. error message read undefined variable
%advancedhighest. this was due to a lower case h in highest that should
%have been capitalized. 
%bug fixed by rewriting code to read highest = advancedHighest.
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(randi([1, highest]));     
% BUG 3. code would not run properly.
%found by testing code with various inputs.
%code always generated highest possible number.
%code corrected to actually produce a random integer between 1 and highest
%possible value. 

% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
%BUG 4. code would not run properly.
%error message said there was an end missing.
% I added an end to this while loop at the end of the script. 

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');


while userGuess < 1 || userGuess > highest 
%BUG 5. code would not run properly.
% code said invalid guess if user inputted highest valid value because it said >=highest. 
% I deleted the = to include 10 in valid response.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop.

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
%BUG 6. code would not run properly. 
% message to user says that their guess was too low, yet code is written if
% userGuess is greater than sectretNumber.
%Therefore, I changed the > to <. 
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);
%BUG 7. code would not run properly. 
%message to user is supposed to say that they guessed the secret number in
%X amount of guesses. Instead it was reading you got (insert secret number
%here) in game over. 
%I fixed this by calling numOfTries in the code meant to display to the
%user. 


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop
end % this was the missing end I added.
% end of game