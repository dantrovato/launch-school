require 'pry'
require 'pry-byebug'
system 'clear'

CARDS_SCORE = {
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9,
  ten: 10,
  jack: 10,
  queen: 10,
  king: 10,
  ace: 11
}

SEEDS = %i[hearts clubs diamonds spades]

deck = SEEDS.map { |seed| CARDS_SCORE.keys.map { |card| :"#{card}_#{seed}" } }.flatten.shuffle

player = []
dealer = []

def prompt(msg)
  puts "=> #{msg}"
end

def deal_initial_hand!(deck, player, dealer)
  while player.size < 2 && dealer.size < 2
    get_card!(player, deck)
    get_card!(dealer, deck)
  end
end

def card_score(card)
  CARDS_SCORE[card.to_s.split('_').first.to_sym]
end

def calculate_player_total(current_player)
  current_player.sum { |card| card_score(card) }
end

def display_initial_cards(player, dealer)
  prompt("Your cards are #{player[0]} and #{player[1]}. Total worth is #{calculate_player_total(player)}.")
  prompt("Dealer cards are #{dealer[0]} and unknown...#{dealer[1]} is worth #{calculate_player_total(dealer)}")
end

def display_received_card(current_player)
  prompt("You turn over this baby: #{current_player.last} worth #{card_score(current_player.last)}")
end

def get_card!(current_player, deck)
  current_player << deck.shift
end

def display_updated_total(current_player)
  display_received_card(current_player)
  prompt("Your new total is #{calculate_player_total(current_player)}")
end

def is_bust?(current_player)
  calculate_player_total(current_player) > 21
end

def player_turn(current_player, deck, game_on) # this one's probably a bit too long
  loop do
    prompt("Do you want to hit or stay?")
    choice = gets.chomp
    break if choice == 'stay' || choice == 's'

    if choice == 'hit' || choice == 'h'
      # update player arr
      get_card!(current_player, deck)

      # check if player not bust
      if is_bust?(current_player)
          prompt("You're busted! Your total is #{calculate_player_total(current_player)}")
          prompt("Dealer wins")
          game_on << ' off'
          #binding.pry
          break
      end
      # display player total
      display_updated_total(current_player)

    else
      prompt("That's not a valid choice")
      next
    end
  end
end

def dealer_turn(current_player, deck, game_on)
  while calculate_player_total(current_player) < 18

    get_card!(current_player, deck)
    if calculate_player_total(current_player) > 21
      prompt("The dealer is bust.")
      prompt("Player wins")
    end
  end
  game_on << ' off'
end

def determine_winner(player, dealer)
  winner = ''
  if !is_bust?(dealer) && !is_bust?(player)
    calculate_player_total(player) > calculate_player_total(dealer)? winner = "Player" : winner = "Dealer"
    prompt("And the winner is...... the #{winner}")
  end
end

def print_score(player, dealer)
  prompt("Dealer score is #{calculate_player_total(dealer)}")
  prompt("Player score is #{calculate_player_total(player)}")
end

deal_initial_hand!(deck, player, dealer)

game = 'on'
while game == 'on'
  display_initial_cards(player, dealer)
  player_turn(player, deck, game)
  binding.pry
  break unless game == 'on'
  #binding.pry
  dealer_turn(dealer, deck, game)
  determine_winner(player, dealer)
  print_score(player, dealer)
end
