def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer)
  if player == 'rock' && computer == 'paper' ||
    player == 'paper' && computer == 'scissors' ||
    player == 'scissors' && computer == 'rock'
    prompt('ha! you lose. computer says \'mwahahaha\'')
  elsif player == 'rock' && computer == 'scissors' ||
    player == 'paper' && computer == 'rock' ||
    player == 'scissors' && computer == 'rock'
    prompt('orite then. you win this time. i\'ll see you in hell')
  else
    prompt('ooooh... we got a draw!')
  end
end

def valid?(choice)
  %W(rock paper scissors).include?(choice)
end

loop do
  choices = <<-CHOICES
  choices:
         rock
         paper
         scissors
  CHOICES

  prompt("Enter your weapon of choice: ")
  prompt(choices)
  player_choice = ''
  loop do
    # get player's choice
    player_choice = gets.chomp.downcase

    # valid choice?
    break if valid?(player_choice)
    prompt("Enter valid option, dude")
  end

  prompt("You chose #{player_choice}")

  # select computer choices
  computer_choice = %w(rock paper scissors).sample
  prompt("Computer chose #{computer_choice}")

  display_results(player_choice, computer_choice)

  prompt('play again? enter yes or no')
  play_again = gets.chomp.downcase
  break if play_again == 'no'
end
