# Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.
#
# Example:
DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
          'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
          'F' => 15}

def hexadecimal_to_integer(str)
  digits_arr = str.chars.map { |chr| DIGITS[chr.upcase] } # => [4, 13, 9, 15] example

  value = 0
  power = 0
  digits_arr.reverse!.each do |num| # [15, 9, 13, 4]
    value += num * (16 ** power)
    power += 1
  end
  value
end

p hexadecimal_to_integer('4D9f') == 19871

























# def hexadecimal_to_integer(str) # '4D9f' example
#   # make array of upcase strings
#
#           # ['4', 'D', '9', 'f']
#   upcase_arr = str.chars.map do |chr|
#     chr.upcase  # => ['4', 'D', '9', 'F'] example
#   end
#
#   # make array of digits
#   digits_arr = upcase_arr.map { |chr| DIGITS[chr] } # => [4, 13, 9, 15] example
#
#   # iterate through digits_arr from last to first
#   power = 0
#   value = 0
#
#   digits_arr.reverse.each do |num|
#     value += num * (16 ** power)
#     power += 1
#   end
#   value
#
# end
