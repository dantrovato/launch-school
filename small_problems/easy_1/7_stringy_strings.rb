# Write a method that takes one argument, a positive integer, and returns a string
# of alternating 1s and 0s, always starting with 1. The length of the string should
# match the given integer.
#
# Examples:
#
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

# MY SOLUSH:

def stringy(int)
  string = String.new # create empty string
  i = 1 # create counter
  int.times do # populate string with 1s and 0s
    if i.odd?
      string << 1.to_s
    else
      string << 0.to_s
    end
    i += 1 # increase counter
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
