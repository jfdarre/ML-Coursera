% Code below is in Octave
% Generating a random integer in {1, 2, .., 100} and initializing guess tracker and guess
secretNumber = randi(100);
guessTrack = 0;
guess = -1;

% will loop untill the secretNumber is guessed or if guessTrack reaches 10, will print "you lose" and exit.
while( secretNumber != guess && guessTrack < 11 )

    % if 11th loop, prints you lose and dont ask to guess, then exit since guessTrack will then be incremented to 11 
    if guessTrack == 10
        fprintf('Sorry, you lost! The Seret Number was %d\n', secretNumber)

    % if we are on our first 10 loops then ask for a guess
    else
        % we ask for user to input a guess untill that guess is at least a real number in [0.5,100.5[ which will be converted to an integer
        invalidGuess = true;
        while( invalidGuess )
            % taking care of any error message due to user not entering a valid input, and if a real number will convert to integer
            try
                guess = int8(input("Pick a number between 1 and 100: "));
            catch
                msg = lasterror.message;
            end_try_catch
            % if guess is a scalar (i.e. not an array or matirx), and between 1 and 100, then we're good
            if( length(guess) == 1 && (1 <= guess) && (guess <= 100) )
                invalidGuess = false;
            % if not then we keep looping and asking for a valid guess
            else
                fprintf('please enter a valid answer!\n')
            end
        end

        % now that our guess is an integer, we test if < or > or = to secretNumber and guide user accordingly
        if guess < secretNumber
            fprintf('your guess is low\n')
        elseif guess > secretNumber
            fprintf('your guess is high\n')
        elseif guess == secretNumber
            fprintf('you guessed right!\n')
        end
    end
    % just tracking the number of guesses and incremeting accordingly
    guessTrack++;
end
