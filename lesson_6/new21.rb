require 'pry'
require 'pry-byebug'

SUITS = %w[hearts clubs diamonds spades]
VALUES = %w[2 3 4 5 6 7 8 9 10 jack queen king ace]

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards) # [["clubs", "ace"], ["clubs", "9"]]
  # extract the values into an array
  values = cards.map do |card|
    card[1]
  end # ["ace", "9"]

  # create a total value
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

  # handle ace
  num_of_aces = values.count('ace')
  num_of_aces.times do
    sum -= 10 if sum > 21
  end # this one is different from launch school slush

  sum
end

def busted?(cards)
  total(cards) > 21
end

def determine_winner(player_cards, dealer_cards)
  if total(player_cards) > 21
    :player_busted
  elsif total(dealer_cards) > 21
    :dealer_busted
  elsif total(player_cards) > total(dealer_cards)
    :player
  elsif total(player_cards) < total(dealer_cards)
    :dealer
  else
    :tie
  end
end

def display_winner(player_cards, dealer_cards)
  case determine_winner(player_cards, dealer_cards)
  when :player_busted
    prompt "Player busted"
  when :dealer_busted
    prompt "Dealer busted"
  when :player
    prompt "You win"
  when :dealer
    prompt "Dealer wins"
  when :tie
    prompt "It's a tie"
  end
end

# def play_again?
#   answer = nil
#   loop do
#     prompt "Play again? y or n"
#     answer = gets.chomp.downcase
#     break if ['y', 'n'].include?(answer)
#     prompt "y or n please"
#   end
#   answer.start_with?('y')
# end

loop do
  system 'clear'
  player_cards = []
  dealer_cards = []

  deck = initialize_deck

  2.times do
    player_cards << deck.shift
    dealer_cards << deck.shift
  end

  prompt "You have #{player_cards} worth a total of #{total(player_cards)}"
  prompt "The dealer has #{dealer_cards[0]} and another card."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Hit (h) or stay (s)?"
      player_turn = gets.chomp.downcase
      if player_turn == 's' || busted?(player_cards)
        break
      elsif player_turn == 'h'
        player_cards << deck.shift
        prompt "You have #{player_cards} worth a total of #{total(player_cards)}"
        break if busted?(player_cards)
      end
    end

    # dealer turn
    while total(dealer_cards) < 17
      dealer_cards << deck.shift
    end
    system 'clear'
    prompt "You have #{player_cards} worth a total of #{total(player_cards)}"
    prompt "Dealer has #{dealer_cards} worth a total of #{total(dealer_cards)}"
    display_winner(player_cards, dealer_cards)
    break
  end
  prompt "Play again? y or n"
  answer = gets.chomp
  break if answer != 'y'
end
