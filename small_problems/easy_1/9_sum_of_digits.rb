# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
#
# Examples:
#
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.
#
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).
#

def sum(int)
  string_array = int.to_s.split('') # => ["4", "9", "6"]


  int_array = string_array.map do |i|
    i.to_i # => [4, 9, 6]
  end
  result = int_array.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
