# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# MY SLUSH
vowels = %w(a e i o u)
hsh.each do |_, str_arr|
  str_arr.each do |string|
    string.each_char do |chr|
      p chr if vowels.include?(chr)
    end
  end

end

# OR...
 
# vowels = %w(a e i o u)
# new_sentence = ''
#
# hsh.each do |key, value|
#   value.each do |string| # => 'the'
#     string.each_char do |chr|
#       new_sentence << chr if vowels.include?(chr)
#     end
#   end
# end
#
# p new_sentence
