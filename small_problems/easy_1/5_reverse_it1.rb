# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.
#
# Examples:
#
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.
#

def reverse_sentence(string)
=begin
  p string.reverse # ex. "dlroW olleH" --- reverses whole string
  p string.split(' ') # ex. ["Hello", "World"] --- returns array of strings split by the space
  p string.split(' ').reverse # ex. ["World", "Hello"] --- returns array in reverse order
  p string.split(' ').reverse.join # ex. "WorldHello" --- returns string from reversed array
  p string.split(' ').reverse.join(' ') # ex. "World Hello" --- solution
=end
  if string != ''
    string.split(' ').reverse.join(' ')
  else
    string
  end
end

#puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
#puts reverse_sentence('Reverse these words') == 'words these Reverse'
