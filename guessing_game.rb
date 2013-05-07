class GuessingGame
  @@max_number = 1000
  def start
    puts "Welcome to my guessing game!"
    player_name
    puts "Hello #{@name}"
    user_number
    guess_number
  end
  
  def player_name
    print "Please enter your name: "
    @name = gets.chomp
  end
  
  def user_number
    print "Please pick a number from 1-1000: "
    @number_guessed = gets.chomp.to_i
    if @number_guessed > 0 && @number_guessed <= @@max_number
      @number_guessed
    else
      print "Please pick a number from 1-1000: "
      @number_guessed = gets.chomp.to_i
    end
  end
  
  def guess_number
    computer_guess = nil
    range = (1..@@max_number)
    while range.count != 1
      top = ((range.first + range.last)/2).round
      puts "Is your number greater than #{top}?(yes/no)"
      if gets.chomp.downcase == "yes"
        range = (top+1..range.last) 
      else
        range = (range.first..top)
      end
    end
    puts "#{@name}, your number is #{range.first}!"
  end
end

new_game = GuessingGame.new
new_game.start