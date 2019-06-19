require 'pry'

class Participant
  attr_accessor :cards_held

  def initialize
    @cards_held = []
  end

  def hit

  end

  def stay

  end

  def busted?

  end

  def total
    # binding.pry
    values = cards_held.map { |card| card[1] } # => ex. ["ace", "7"]
  end
end

class Player < Participant

end

class Dealer < Participant

  # attr_reader :deck
  #
  # def initialize
  #   @deck = Deck.new
  # end
  #
  def initial_total
    [total[0]]
  end
end

class Deck
  SUITS = %w(hearts clubs diamonds spades)
  VALUES = %w(2 3 4 5 6 7 8 9 10 jack queen king ace)

  attr_reader :cards, :player, :dealer

  def initialize
    @cards = SUITS.product(VALUES).shuffle
    @player = Player.new
    @dealer = Dealer.new
  end

  def deal_cards
    2.times { player.cards_held << cards.shift.flatten }
    2.times { dealer.cards_held << cards.shift.flatten }
  end

  def display_cards
    puts "Your cards are #{player.cards_held}, for a total of: #{calculate_total(player.total)}" # => ex. [["diamonds", "3"], ["hearts", "6"]]
    # binding.pry
    puts "Dealer cards are #{dealer.cards_held[0]}, worth #{calculate_total(dealer.initial_total)} and ??"
  end

  def to_s
    cards
  end

  def calculate_total(cards)
    total = 0

    cards.each do |value|
      if value == "ace"
        total += 11
      elsif value.to_i == 0
        total += 10
      else
        total += value.to_i
      end
    end

    total
  end
end

class Game
  attr_reader :deck

  def initialize
    # @dealer = Dealer.new
    @deck = Deck.new
  end

  def display_welcome_message
    puts "Welcome to 21!"
  end

  def display_goodbye_message
    puts "Thanks for playing."
  end

  def start
    display_welcome_message
    deck.deal_cards
    deck.display_cards
    display_goodbye_message
  end
end

Game.new.start
