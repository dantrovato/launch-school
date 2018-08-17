# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %w(a e i o u)
new_sentence = ''

hsh.each do |key, value|
  value.each do |string| # => 'the'
    string.each_char do |chr|
      new_sentence << chr if vowels.include?(chr)
    end
  end
end

p new_sentence
