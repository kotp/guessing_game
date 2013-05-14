




require './lib/guessing_game'
puts GuessingGame.introduction
name = GuessingGame.ask_name
max_number = GuessingGame.get_range
choice = GuessingGame.get_choice
@my_game = GuessingGame.new(name, max_number, choice)
until @my_game.guessed_number?
   # asking guesses
end
puts GuessingGame.outro
