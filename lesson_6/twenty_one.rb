# generate deck
SUITS = %w[hearts spades diamonds clubs]
VALUES = %w[2 3 4 5 6 7 8 9 10 jack queen king ace]

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

# calculate total
def total(cards)
  values = cards.map { |card| card[1]}

  sum = 0
  values.each do |value|
    if value == 'ace'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.count('ace').times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_cards, player_cards)
  if busted?(player_cards)
    :player_busted
  elsif busted?(dealer_cards)
    :dealer_busted
  elsif total(player_cards) > total(dealer_cards)
    :player
  elsif total(dealer_cards) > total(player_cards)
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)

  case detect_result(dealer_cards, player_cards)
  when :player_busted then prompt "Player busted. Dealer wins."
  when :dealer_busted then prompt "Dealer busted. Player wins."
  when :player then prompt "Player wins."
  when :dealer then prompt "Dealer wins."
  else              prompt "It's a tie!"
  end
end

# make players and give them cards
player_cards = []
dealer_cards = []
deck = initialize_deck

2.times do
  player_cards << deck.shift
  dealer_cards << deck.shift
end

def play_again?
  puts '------------'
  prompt "Wanna play again?"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  # show player cards and 1 from dealer
  prompt "Your cards are #{player_cards} for a total of #{total(player_cards)}"
  prompt "Dealer has a #{dealer_cards[0]} and another card."

  # player move
  loop do
    player_turn = nil
    loop do
      prompt "Enter h to hit or s to stay."
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Not a valid choice."
    end

    if player_turn == 'h'
      player_cards << deck.shift
      prompt "Your cards are #{player_cards} for a total of #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # dealer move
  until total(dealer_cards) <= 17
    dealer_cards << deck.shift
  end

  if busted?(dealer_cards)
    prompt "Dealer total is now: #{total(dealer_cards)}"
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end


  # declare winner
  prompt "Your cards are #{player_cards} for a total of #{total(player_cards)}"
  prompt "Dealer cards are #{dealer_cards} for a total of #{total(dealer_cards)}"

  display_result(dealer_cards, player_cards)

  break unless play_again?
end
