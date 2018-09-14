=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end

require 'pry'
require 'pry-byebug'
system 'clear'
game = 'on'
hearts = {ace_hearts: 11, two_hearts: 2, three_hearts: 3, four_hearts: 4, five_hearts: 5, six_hearts: 6, seven_hearts: 7, eight_hearts: 8,
          nine_hearts: 9, ten_hearts: 10, jack_hearts: 10, queen_hearts: 10, king_hearts: 10}
clubs = {ace_clubs: 11, two_clubs: 2, three_clubs: 3, four_clubs: 4, five_clubs: 5, six_clubs: 6, seven_clubs: 7, eight_clubs: 8,
          nine_clubs: 9, ten_clubs: 10, jack_clubs: 10, queen_clubs: 10, king_clubs: 10}
diamonds = {ace_diamonds: 11, two_diamonds: 2, three_diamonds: 3, four_diamonds: 4, five_diamonds: 5, six_diamonds: 6, seven_diamonds: 7, eight_diamonds: 8,
          nine_diamonds: 9, ten_diamonds: 10, jack_diamonds: 10, queen_diamonds: 10, king_diamonds: 10}
spades = {ace_spades: 11, two_spades: 2, three_spades: 3, four_spades: 4, five_spades: 5, six_spades: 6, seven_spades: 7, eight_spades: 8,
          nine_spades: 9, ten_spades: 10, jack_spades: 10, queen_spades: 10, king_spades: 10}
deck = hearts.merge(clubs).merge(diamonds).merge(spades).to_a.shuffle

player = []
dealer = []

def prompt(msg)
  puts "=> #{msg}"
end

def deal_initial_hand!(deck, player, dealer)
  while player.size < 2 && dealer.size < 2
    player << deck[0]
    deck.shift
    dealer << deck[0]
    deck.shift
  end
end

def calculate_player_total(current_player)
  # returns player total
  i = 0
  total = 0
  while i < current_player.size
    total += current_player[i][1]
    i += 1
  end
  total
end

def display_initial_cards(player, dealer)
  prompt("Your cards are #{player[0][0]} and #{player[1][0]}. Total worth is #{calculate_player_total(player)}.")
  prompt("Dealer cards are #{dealer[0][0]} and unknown...#{dealer[0][0]} is worth #{dealer[0][1]}")
end

def display_received_card(current_player)
  prompt("You turn over this baby: #{current_player.last[0]} worth #{current_player.last[1]}")
end

def get_card!(current_player, deck)
  current_player << deck[0]
  deck.shift
end

def display_updated_total(current_player)
  display_received_card(current_player)
  prompt("Your new total is #{calculate_player_total(current_player)}")
end

def is_bust?(current_player)
  calculate_player_total(current_player) > 21
end

def check_if_bust(current_player)

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

      # else
      #   prompt("Dealer score is #{calculate_player_total(current_player)}")
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
  prompt("Dealer score is #{calculate_player_total(dealer)}")
  prompt("Player score is #{calculate_player_total(player)}")
end

#============================ BEGIN GAME

deal_initial_hand!(deck, player, dealer)

while game == 'on'
  display_initial_cards(player, dealer)
  player_turn(player, deck, game)
  #binding.pry
  break unless game == 'on'
  #binding.pry
  dealer_turn(dealer, deck, game)
  determine_winner(player, dealer)
  #game_on = false
end
