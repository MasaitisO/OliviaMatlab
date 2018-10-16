% Assignment 3: Tic Tac Toe
% Olivia Masaitis
% 9/25/2018
% This code allows the user to play a game of Tic Tac Toe with the
% computer. The computer provides user instructions, then proceeds to take
% the first turn. The computer must then prompt the user to make their
% initial move. The computer will generate random moves until someone wins
% or the game ends in a tie.

% welcome message, and user prompt to initiate play. after each game
% the user should be prompted to play again. this continues until user says
% no, at which time they should receive a farewell message.

%^what it was supposed to do.what it actually does> this game doesnt work. i suck. i have no idea how i screwed it up so bad,
%please help me understand :'(
GameBoard = ['1'  '2' '3'; '4' '5' '6'; '7' '8' '9'];
disp('Hey Pat!')
pause(3)
disp('Welcome to Tic Tac Toe')
pause(3)
disp('Are you ready to play?')
answer = input('Enter yes or no: ','s')

PlayTicTacToe = true;
while(PlayTicTacToe) %while true complete the following
    if(strcmp( 'yes', answer))
        PlayTicTacToe = false %while false jump out of while loop
        disp('You will be x and I will be o')
        disp(GameBoard) % displays gameboard
        pause(3)
        disp('I will go first') %computer makes first move
        pause(3)
        GameBoard(2,2)= 'o'; %computer move in middle of gameboard
        disp(GameBoard)
    elseif(strcmp ('no', answer)) %no user does not want to play
        PlayTicTacToe = false
        disp('Fine be that way, Later Loser.')
        break
    else
        disp('Invalid input, please type yes or no: ') %response must be yes or no
        answer = input('Enter yes or no: ','s')
        PlayTicTacToe = true;
        while(PlayTicTacToe) %while true complete the following
            if(strcmp( 'yes', answer))
                PlayTicTacToe = false %while false jump out of while loop
                disp('You will be x and I will be o')
                disp(GameBoard) % displays gameboard
                pause(3)
                disp('I will go first') %computer makes first move
                pause(3)
                GameBoard(2,2)= 'o'; %computer move in middle of gameboard
                disp(GameBoard)
            elseif(strcmp ('no', answer)) %no user does not want to play
                PlayTicTacToe = false
                disp('Fine be that way, Later Loser.')
                break
                
            end
        end
    end
    turns = (1:8);
    for i = 1:length(turns);
        disp(GameBoard)
        if(i == 2 || i == 4 || i == 6 || i == 8)
            %computer move
            ComputerMove = randi([1 9]);
            row = true;
            column = true;
            while (GameBoard(row,column)) == 'x' || (GameBoard(row,column)) == 'o'%while space is unavailable do the following
                ComputerMove = randi([1 9]);
            end
            CheckMove = false;
            while(CheckMove) %while space is available do the following
                if ComputerMove == 1
                    row = 1;
                    column = 1;
                elseif ComputerMove == 2
                    row = 1;
                    column = 2;
                elseif ComputerMove == 3
                    row = 1;
                    column = 3;
                elseif ComputerMove == 4
                    row = 2;
                    column = 1;
                elseif ComputerMove == 5
                    row = 2;
                    column = 2;
                elseif ComputerMove == 6
                    row = 2;
                    column = 3;
                elseif ComputerMove == 7
                    row = 3;
                    column = 1;
                elseif ComputerMove == 8
                    row = 3;
                    column = 2;
                elseif ComputerMove == 9
                    row = 3;
                    column = 3;
                end
                CheckMove = true;
            end
        else
            disp('make your move, Patrick.')
            pause(3)
            
            PlayerMove=input('Enter a number 1-9 to replace with x: ');%player move
            while((PlayerMove<1)||(PlayerMove>9))
                disp('Only a Raiders fan would try to break tic tac toe')
                PlayerMove=input('Enter a number 1-9 to replace with x: ');
            end
            if(GameBoard(row,column)) == 'x' || (GameBoard(row,column)) == 'o'%while space is unavailable do the following
                disp('That space is taken, obviously!')
                pause(3)
                disp('Make another selection')
                PlayerMove=input('Enter a number 1-9 to replace with x: ')
            else
                GameBoard(row,column) = 'x'
                CheckMove=false;
                while(CheckMove)%while space is available do the following
                    if PlayerMove == 1
                        row = 1;
                        column = 1;
                    elseif PlayerMove == 2
                        row = 1;
                        column = 2;
                    elseif PlayerMove == 3
                        row = 1;
                        column = 3;
                    elseif PlayerMove == 4
                        row = 2;
                        column = 1;
                    elseif PlayerMove == 5
                        row = 2;
                        column = 2;
                    elseif PlayerMove == 6
                        row = 2;
                        column = 3;
                    elseif PlayerMove == 7
                        row = 3;
                        column = 1;
                    elseif PlayerMove == 8
                        row = 3;
                        column = 2;
                    elseif PlayerMove == 9
                        row = 3;
                        column = 3;
                    end
                end
                turns = (1:8);
                for i = 1:length(turns);
                    if(i == 5 || i == 6 || i == 7 || i == 8 || i == 9)
                        %checks for all possible win conditions to determine if the player won, the
                        %computer won, or if the game ended in a tie. Should occur at turns 5,6,7,8
                        %and 9.
                        if(GameBoard(1,1)) == 'x' && (GameBoard(1,2)) == 'x' && (GameBoard(1,3)) == 'x'
                        elseif(GameBoard(2,1)) == 'x' && (GameBoard(2,2)) == 'x' && (GameBoard(2,3)) == 'x'
                            disp('It appears you have won this round, you wont be so lucky next time.'' s')
                        elseif(GameBoard(3,1)) == 'x' && (GameBoard(3,2)) == 'x' && (GameBoard(3,3)) == 'x'
                            disp('It appears you have won this round, you wont be so lucky next time.'' s')
                        elseif(GameBoard(1,1)) == 'x' && (GameBoard(2,2)) == 'x' && (GameBoard(3,3)) == 'x'
                            disp('It appears you have won this round, you wont be so lucky next time.'' s')
                        elseif(GameBoard(1,3)) == 'x' && (GameBoard(2,2)) == 'x' && (GameBoard(3,1)) == 'x'
                            disp('It appears you have won this round, you wont be so lucky next time.'' s')
                        elseif(GameBoard(1,1)) == 'x' && (GameBoard(2,1)) == 'x' && (GameBoard(3,1)) == 'x'
                            disp('It appears you have won this round, you wont be so lucky next time.'' s')
                        elseif(GameBoard(1,2)) == 'x' && (GameBoard(2,2)) == 'x' && (GameBoard(3,2)) == 'x'
                            disp('It appears you have won this round, you wont be so lucky next time.'' s')
                        elseif(GameBoard(1,3)) == 'x' && (GameBoard(2,3)) == 'x' && (GameBoard(3,3)) == 'x'
                            disp('It appears you have won this round, you wont be so lucky next time.'' s')
                        elseif(GameBoard(1,1)) == 'o' && (GameBoard(1,2)) == 'o' && (GameBoard(1,3)) == 'o'
                            disp('Winner winner chicken dinner, for me that is!''s ')
                        elseif(GameBoard(2,1)) == 'o' && (GameBoard(2,2)) == 'o' && (GameBoard(2,3)) == 'o'
                            disp('Winner winner chicken dinner, for me that is!''s ')
                        elseif(GameBoard(3,1)) == 'o' && (GameBoard(3,2)) == 'o' && (GameBoard(3,3)) == 'o'
                            disp('Winner winner chicken dinner, for me that is!''s ')
                        elseif(GameBoard(1,1)) == 'o' && (GameBoard(2,2)) == 'o' && (GameBoard(3,3)) == 'o'
                            disp('Winner winner chicken dinner, for me that is!''s ')
                        elseif(GameBoard(1,3)) == 'o' && (GameBoard(2,2)) == 'o' && (GameBoard(3,1)) == 'o'
                            disp('Winner winner chicken dinner, for me that is!''s ')
                        elseif(GameBoard(1,1)) == 'o' && (GameBoard(2,1)) == 'o' && (GameBoard(3,1)) == 'o'
                            disp('Winner winner chicken dinner, for me that is!''s ')
                        elseif(GameBoard(1,2)) == 'o' && (GameBoard(2,2)) == 'o' && (GameBoard(3,2)) == 'o'
                            disp('Winner winner chicken dinner, for me that is!''s ')
                        elseif(GameBoard(1,3)) == 'o' && (GameBoard(2,3)) == 'o' && (GameBoard(3,3)) == 'o'
                            disp('Winner winner chicken dinner, for me that is!''s ')
                        else
                            disp('looks like there are no winners here today'' s')
                        end
                    end
                end
            end
        end
    end
end
%asks the player if they would like to play again.
disp('Ready for a rematch')
rematch = input('Enter yes or no: ','s')
PlayAgain = true;
while(PlayAgain)
    if(strcmp('yes', rematch)) %when player wants a rematch this message is displayed
        PlayAgain = false
        disp('Challenge accepted, this one is for the championship of the free world')
    elseif(strcmp('no', rematch)) %when player does not want rematch they receive this mesage
        PlayAgain = false
        disp('I see you have chosen to accept defeat')
    else
        disp('Invalid entry, you must say yes or no to a rematch: ','s') %prompts user to enter yes or no
    end
end