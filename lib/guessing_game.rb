




class GuessingGame
  def self.introduction
    text = <<-EOS
    Let's play a game!

    I will ask you for your name, as introductions are always nice.
    I will ask you for a maximum number for me to guess a number within.
    I will then ask you for a number for me to guess.
    You will type it in, and I promise not to peek!
    EOS
  end

  def self.ask_name
    print "What is your name? "
    gets.chomp
  end

  def self.get_range
    print "What is the maximum number I should be looking for? "
    @max = gets.to_i
  end

  def self.get_choice
    print "I honestly am not peeking, you can type in your number. "
    choice = gets.to_i 
    while choice > @max
      puts "We will have to try again, as your choice is higher than max."
      choice = gets.to_i
    end
    choice
  end
  def initialize(name = 'George', max_number = 1000, choice)
    @name = name
    @choice = choice
    @max_number = max_number
  end
  def start
    puts "Welcome to my guessing game!"
    player_name
    puts "Hello #{@name}"
    user_number
    guess_number
  end
  
  def player_name
    @name
  end
  
  def user_number
    print "Please pick a number from 1-1000: "
    @number_guessed = gets.to_i
    if @number_guessed > 0 && @number_guessed <= @max_number
      @number_guessed
    else
      print "Please pick a number from 1-1000: "
      @number_guessed = gets.to_i
    end
  end
  
  def guess_number
    computer_guess = nil
    range = (1..@max_number)
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

if __FILE__ == $0
  new_game = GuessingGame.new
  new_game.start
end
