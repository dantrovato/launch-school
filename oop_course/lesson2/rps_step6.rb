require 'pry'
require 'pry-byebug'
# DISPLAY WINNER
CHOICES = %w(rock paper scissors)

class Move
  VALUES = %w(rock paper scissors)

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == "scissors"
  end

  def rock?
    @value == "rock"
  end

  def paper?
    @value == "paper"
  end

  def to_s
    @value
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?)
  end
end

class Player
  attr_accessor :move, :name

  def initialize
    @name = nil
    set_name
  end
end

class Human < Player
  def choice
    choice = nil
    loop do
      puts "Choose between rock paper or scissors"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
    end
    self.move = Move.new(choice)
  end

  def set_name
    loop do
      puts "What's your name?"
      n = gets.chomp
      self.name = n
      break unless n.empty?
      puts "Enter a name"
    end
  end
end

class Computer < Player
  def choice
    self.move = Move.new(Move::VALUES.sample)
  end

  def set_name
    self.name = %w(dfs er tra era).sample
  end
end

class RPSGame
  attr_accessor :human, :computer
  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to the game"
  end

  def display_goodbye_message
    puts "Thanks for playing"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Play again? y n"
      answer = gets.chomp
      break if %w(y n).include?(answer)
      puts "Invalid choice"
    end
    answer == 'y'
  end

  def play
    display_welcome_message
    loop do
      human.choice
      computer.choice
      display_moves
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
