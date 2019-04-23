=begin
101-109 - Small ProblemsDebuggingCard Deck

Card Deck
We started working on a card game but got stuck. Check out why the code below
raises a TypeError.

Once you get the program to run and produce a sum, you might notice that the sum
is off: It's lower than it should be. Why is that?

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, cards)|
  cards.map do |card|
    score(card)
  end

  sum += cards.sum
end

puts sum

=end

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit| # => [:hearts, :diamonds, :clubs, :spades]
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop # ex. player_cards == [:king, 7, 9, 4]
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, cards)|
  cards.map do |card|
    p score(card)
  end
  
  #sum += cards.sum
end

puts sum




=begin

Hide Solution & Discussion
Solution
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, cards)|
  scores = cards.map do |card|
    score(card)
  end

  sum += scores.sum
end

puts sum
Discussion
The error message looks something like this:

example.rb:34:in `+': :jack can't be coerced into Integer (TypeError)
This means that when summing up the card scores with cards.sum on line 34, the
cards array still contains :jack instead of its score 10. (Your error message may
  vary slightly, naming another face card instead).

This is because we use Array#map on lines 30-32 to map the cards to their scores.
map returns a new array with the scores, but we never use that new array. On line
34, cards still references the original array containing both integers representing
numbered cards, and symbols representing face cards.

The solution is to assign the new array returned by map to a variable (scores)
and
invoke sum on that new array of integers. Now our program successfully returns a
sum. Let's check out whether the sum is correct.

In order to check the final sum, let's add a test case: The sum of the remaining
cards in the deck should be the total sum of the deck when it's complete minus the
sum of player_cards.

total_sum  = 4 * [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].sum
player_sum = player_cards.map { |card| score(card) }.sum

puts(sum == total_sum - player_sum) #=> false
Let's inspect what is happening by firing up pry with two break points: one before
we collect the player's cards, and one at the end of each iteration.

require 'pry'

# Code omitted

# Pick one random card per suit

binding.pry

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop

  binding.pry
end
The initial card deck is as expected:

pry(main)> deck
=> { :hearts   => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
     :diamonds => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
     :clubs    => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
     :spades   => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]}
After the first iteration, you see something like the following (the details will
  differ for you):

pry(main)> player_cards
=> [2]

pry(main)> deck
=> {:hearts   => [8, :ace, :king, :queen, 10, 5, 9, 7, :jack, 4, 6, 3],
    :diamonds => [8, :ace, :king, :queen, 10, 5, 9, 7, :jack, 4, 6, 3],
    :clubs    => [8, :ace, :king, :queen, 10, 5, 9, 7, :jack, 4, 6, 3],
    :spades   => [8, :ace, :king, :queen, 10, 5, 9, 7, :jack, 4, 6, 3]}
The important thing to notice here is that although we intended to apply shuffle!
and pop to only one of the arrays (returned by deck[suit]), these method invocations
impact all four arrays; they are all shuffled in the exact same way and they all
miss the player card we picked (2 in this example).

This is because on lines 3-6 we assigned the same array object to each suit. The
value associated with each key in our deck hash is thus the same object. When we
mutate this object using shuffle! and pop, each value in our deck hash is affected
by that mutation.

The most straightforward solution is to clone the cards array when adding it to
the deck on lines 3-6.
=end
