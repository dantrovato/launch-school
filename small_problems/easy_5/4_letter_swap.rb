# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of every word is swapped.
#
# You may assume that every word contains at least one letter, and that the string will
# always contain at least one word. You may also assume that each string contains nothing but words and spaces
#
# Examples:
#
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'



p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'


# MY SLUSH
# def swap(str)
#   # str.split => ["Oh", "what", "a", "wonderful", "day", "it", "is"]
#   swapped_words_arr = str.split.map do |word|
#     word.size > 1 ? "#{word[-1]}#{word[1..-2]}#{word[0]}" : word
#   end
#   p swapped_words_arr.join(' ')
# end
