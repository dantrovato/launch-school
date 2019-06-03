require 'pry'
require 'pry-byebug'

class Move
  VALUES = %w(rock paper scissors lizard spock)

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

  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'spock'
  end

  def to_s
    @value
  end

  def >(other_move)
    ((rock? && other_move.scissors?) || (rock? && other_move.lizard?)) ||
      ((paper? && other_move.rock?) || (paper? && other_move.spock?)) ||
      ((scissors? && other_move.paper?) || (scissors? && other_move.lizard?)) ||
      ((lizard? && other_move.paper?) || (lizard? && other_move.spock?)) ||
      ((spock? && other_move.rock?) || (spock? && other_move.scissors?))
  end

  def <(other_move)
    ((rock? && other_move.paper?) || (rock? && other_move.spock?)) ||
      ((paper? && other_move.scissors?) || (paper? && other_move.lizard?)) ||
      ((scissors? && other_move.rock?) || (scissors? && other_move.spock?)) ||
      ((lizard? && other_move.scissors?) || (lizard? && other_move.rock?)) ||
      ((spock? && other_move.lizard?) || (spock? && other_move.paper?))
  end
end

class Player
  attr_accessor :move, :name, :score, :log

  def initialize
    @name = nil
    @score = 0
    set_name
    @log = []
  end
end

class Human < Player
  def choice
    choice = nil
    loop do
      puts "Choose between rock, paper, scissors, lizard or spock."
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
    self.name = %w(comp ute applicle cyborg).sample
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

  def display_round_winner
    if human.move > computer.move
      puts "#{human.name} won this round!"
    elsif human.move < computer.move
      puts "#{computer.name} won this round!"
    else
      puts "It's a tie!"
    end
  end

  # def play_again?
  #   answer = nil
  #   loop do
  #     puts "Play again? y n"
  #     answer = gets.chomp
  #     break if %w(y n).include?(answer)
  #     puts "Invalid choice"
  #   end
  #   answer == 'y'
  # end

  def update_score
    if human.move > computer.move
      human.score += 1
    elsif human.move < computer.move
      computer.score += 1
    end
  end

  def display_score
    puts "#{human.name} score is: #{human.score}"
    puts "#{computer.name} score is: #{computer.score}"
  end

  def game_over?
    human.score == 3 || computer.score == 3
  end

  def display_game_winner
    if human.score == 3
      puts "#{human.name} won this game. Mwahahahaha."
    else
      puts "#{computer.name} won this game. Booooooooo."
    end
  end

  def update_log
    human.log << human.move.to_s
    computer.log << computer.move.to_s
  end

  def display_log
    puts "#{human.name}'s moves: #{human.log}"
    puts "#{human.name}'s moves: #{computer.log}"
  end

  def play
    display_welcome_message
    display_score
    loop do
      human.choice
      computer.choice
      update_log
      display_moves
      display_round_winner
      update_score
      display_score
      display_log
      # break unless play_again?
      break if game_over?
    end
    display_game_winner
    display_goodbye_message
  end
end

RPSGame.new.play
