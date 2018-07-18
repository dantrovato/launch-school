def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock') && (second == 'scissors' || second == 'lizard')  ||
  (first == 'paper') && (second == 'rock' || second == 'spock') ||
  (first == 'scissors') && (second == 'paper' || second == 'lizard') ||
  (first == 'spock') && (second == 'rock' || second == 'scissors') ||
  (first == 'lizard') && (second == 'spock' || second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('orite then. you win this time. i\'ll see you in hell')
  elsif win?(computer, player)
    prompt('ha! you lose. computer says \'mwahahaha\'')
  else
    prompt('ooooh... we got a draw!')
  end
end

def valid?(choice)
  %W(rock paper scissors lizard spock).include?(choice)
end

loop do
  choices = <<-CHOICES
  choices:
         rock
         paper
         scissors
         lizard
         spock
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
  computer_choice = %w(rock paper scissors lizard spock).sample
  prompt("Computer chose #{computer_choice}")

  display_results(player_choice, computer_choice)

  prompt('play again? enter yes or no')
  play_again = gets.chomp.downcase
  break if play_again == 'no'
end
