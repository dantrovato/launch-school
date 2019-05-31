# DISPLAY WINNER
CHOICES = %w(rock paper scissors)

class Player
  attr_accessor :move, :name

  def initialize(player_type = :human)
    @player_type = player_type
    @move = nil
    @name = nil
    set_name
  end

  def set_name
    if human?
      loop do
        puts "What's your name?"
        n = gets.chomp
        self.name = n
        break unless n.empty?
        puts "Enter a name"
      end
    else
      self.name = %w(dfs er tra era).sample
    end
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

  def display_winner
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
    puts "It's a tie" if human.move == computer.move
    case human.move
    when 'rock'
      puts "#{human.name} won" if computer.move == 'scissors'
      puts "#{computer.name} won" if computer.move == 'paper'
    when 'paper'
      puts "#{human.name} won" if computer.move == 'rock'
      puts "#{computer.name} won" if computer.move == 'scissors'
    when 'scissors'
      puts "#{human.name} won" if computer.move == 'paper'
      puts "#{computer.name} won" if computer.move == 'rock'
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
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
