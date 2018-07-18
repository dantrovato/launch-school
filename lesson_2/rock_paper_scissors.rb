scores = {
  player: 0,
  computer: 0
}

choices = <<-CHOICES
choices:
       r for rock
       p for paper
       sc for scissors
       l for lizard
       sp for spock
CHOICES

def prompt(message)
  puts "=> #{message}"
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

def win?(first, second)
  (first == 'rock') && (second == 'scissors' || second == 'lizard') ||
  (first == 'paper') && (second == 'rock' || second == 'spock') ||
  (first == 'scissors') && (second == 'paper' || second == 'lizard') ||
  (first == 'spock') && (second == 'rock' || second == 'scissors') ||
  (first == 'lizard') && (second == 'spock' || second == 'paper')
end

def update_score(player, computer, scores)
  if win?(player, computer)
    scores[:player] += 1
  elsif win?(computer, player)
    scores[:computer] += 1
  else
    prompt('this happens')
  end
  scores
end

def print_score(scores)
  puts scores
end

def valid?(choice)
  %w(rock paper scissors lizard spock).include?(choice)
end

loop do
  prompt("Enter your weapon of choice: ")
  prompt(choices)
  player_choice = ''

  loop do
    # get player's choice
    player_choice = gets.chomp.downcase

    case player_choice
    when 'r'
      player_choice = 'rock'
    when 'p'
      player_choice = 'paper'
    when 'sc'
      player_choice = 'scissors'
    when 'l'
      player_choice = 'lizard'
    when 'sp'
      player_choice = 'spock'
    end

    # valid choice?
    break if valid?(player_choice)
    prompt("Enter valid option, dude")
  end

  prompt("You chose #{player_choice}")

  # select computer choices
  computer_choice = %w(rock paper scissors lizard spock).sample
  prompt("Computer chose #{computer_choice}")

  display_results(player_choice, computer_choice)
  update_score(player_choice, computer_choice, scores)
  print_score(scores)
  break if scores[:player] == 5 || scores[:computer] == 5
  prompt('play again? enter yes or no')
end
