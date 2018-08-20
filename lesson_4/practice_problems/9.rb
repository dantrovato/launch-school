# As we have seen previously we can use some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"
# would be:

# words = "The Flintstones Rock"
# Write your own version of the rails titleize implementation.

# MY SLUSH
titleized = words.split.map do |word|
  word[0].upcase! + word[1, word.length - 1]
end.join(' ')

# BETTER SLUSH

titleized = words.split.map { |word| word.capitalize }.join(' ')

p titleized

p '====================='
