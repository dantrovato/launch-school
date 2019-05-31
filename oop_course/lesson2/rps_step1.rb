CHOICES = %w(rock paper scissors)

class Player
  attr_accessor :move

  def initialize(player_type = :human)
    @player_type = player_type
    @move = nil
  end

  def choice
    if human?
      choice = nil
      loop do
        puts "Choose between rock paper or scissors"
        choice = gets.chomp
        break if %w(rock paper scissors).include?(choice)
      end
      self.move = choice
    else
      self.move = CHOICES.sample
    end
  end

  def human?
    @player_type == :human
  end
end

class RPSGame
  attr_accessor :human, :computer
  def initialize
    @human = Player.new
    @computer = Player.new(:computer)
  end

  def display_welcome_message
    puts "Welcome to the game"
  end

  def display_goodbye_message
    puts "Thanks for playing"
  end

  def play
    display_welcome_message
    human.choice
    computer.choice
    # declare_winner
    display_goodbye_message
  end
end

RPSGame.new.play
