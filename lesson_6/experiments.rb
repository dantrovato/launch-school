SUITS = %w(hearts diamonds clubs spades)
VALUES = %w(2 3 4 5 6 7 8 9 10 jack queen king ace)

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards [["spades", "4"], ["diamonds", "ace"], ["clubs", "queen"]]

  # extract value into an array
  values = cards.map { |card| card[1] }# => ['4', 'ace', 'queen']

  # give a value to each item in values array and add it to sum
  sum = 0
  values.each do |value|
    if value == 'ace'
      sum += 11
    elsif value.to_i == 0 # jack queen and king
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'ace' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(player_cards, dealer_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif player_total < dealer_total
    :dealer
  else
    :tie
  end
end

def display_result(player_cards, dealer_cards)
  result = detect_result(player_cards, dealer_cards)
  case result
  when :player_busted
    prompt "You busted. Dealer wins."
  when :dealer_busted
    prompt "Dealer busted. You win."
  when :player
    prompt "You win."
  when :dealer
    prompt "Dealer wins."
  when :tie
    prompt "It's a tie."
  end
end

def play_again?
  puts "-------"
  prompt "Play again? y or n."
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

loop do
  system 'clear'
  prompt "Welcome to 21"
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.shift
    dealer_cards << deck.shift
  end

  prompt "Your cards are #{player_cards} worth a total of #{total(player_cards)}"
  prompt "Dealer cards are #{dealer_cards[1]} and ???"

  loop do
    player_turn = nil
    loop do
      prompt "What do you want to do? hit(h) or stay(s)?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Must enter h or s"
    end

    if player_turn == 'h'
      player_cards << deck.shift
      prompt "Your new cards are #{player_cards} worth a total of #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)

    if busted?(player_cards)
      display_result(player_cards, dealer_cards)
      play_again? ? next : break
    else
      prompt "You stayed at #{total(player_cards)}"
    end
  end

  prompt "Dealer turn..."

  loop do
    break if total(dealer_cards) >= 17
    prompt "Dealer hits"
    dealer_cards << deck.shift
    prompt "Dealer cards are now #{total(dealer_cards)}"
  end

  if busted?(dealer_cards)
    prompt "Dealer's total is now #{total(dealer_cards)}"
    display_result(player_cards, dealer_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end

  puts "==================="
  prompt "Player has cards #{player_cards} and a total of #{total(player_cards)}"
  prompt "Dealer has cards #{dealer_cards} and a total of #{total(dealer_cards)}"
  puts "==================="

  display_result(player_cards, dealer_cards)
  break unless play_again?
end

prompt "Laterzzzz"
