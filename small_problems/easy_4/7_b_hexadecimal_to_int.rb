# Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.
#
# Example:
DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
          'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
          'F' => 15}

def hexadecimal_to_integer(str)
  # iterate over reversed string
  digits_arr = str.reverse.chars.map { |chr| DIGITS[chr.upcase] } # [15, 9, 13, 4]
  power = 0
  value = 0
  digits_arr.each do |num|
    value += num * 16 ** power
    power += 1
  end
  value
end

p hexadecimal_to_integer('4D9f') == 19871
