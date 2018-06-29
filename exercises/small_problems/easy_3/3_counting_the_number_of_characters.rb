# Write a program that will ask a user for an input of a word or
# multiple words and give back the number of characters. Spaces
# should not be counted as a character.
#
# input:
#
# Please write word or multiple words: walk
# output:
#
# There are 4 characters in "walk".
# input:
#
# Please write word or multiple words: walk, don't run
# output:
#
# There are 13 characters in "walk, don't run".

puts "Please write word or multiple words:"

words = gets.chomp
characters = 0
words.each_char do |chr|
  if chr != ' '
    characters += 1
  end
end
puts characters

puts "There are #{characters} characters in #{words}."
