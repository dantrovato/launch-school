# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.
#
# Examples
#
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# MY SLUSH
=begin
VALID_LETTERS = ('A'..'z')

def word_sizes(words_string)
  counts = Hash.new(0)
  words_arr = words_string.split.map do |word| # ["What's", "up", "doc?"]
    letters = word.chars.select do |chr|
      VALID_LETTERS.include?(chr)
    end
    letters.join('')
  end # => ["Whats", "up", "doc"]
  words_arr.each do |word|
    counts[word.size] += 1
  end
  counts
end
=end

require 'pry'
require 'pry-byebug'


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
