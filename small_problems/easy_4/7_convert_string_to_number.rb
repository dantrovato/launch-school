# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.
#
# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.
#
# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.
#
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.
#
# Examples
#
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570




DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  digit_arr = str.chars.map { |chr| DIGITS[chr] }
  value = 0
  digit_arr.each do |num|
    value = 10 * value + num
  end
  value
end
=begin
# CESI'S SOLUSH
def string_to_integer(str)
  p eval(str)

end

puts "2============================="
# MY SOLUSH
def string_to_integer(str)
  #str = str.split('')
  array = []
  str.each_char do |chr|
    case chr
    when '1' then chr = 1
    when '2' then chr = 2
    when '3' then chr = 3
    when '4' then chr = 4
    when '5' then chr = 5
    when '6' then chr = 6
    when '7' then chr = 7
    when '8' then chr = 8
    when '9' then chr = 9
    when '0' then chr = 0
    end
    array << chr
  end

  if array.length == 4
    array[0] *= 1000
    array[1] *= 100
    array[2] *= 10
    array[0] + array[1] + array[2] + array[3]
  elsif array.length == 3
    array[0] *= 100
    array[1] *= 10
    array[0] + array[1] + array[2]
  end

end
=end


=begin
# ACTUAL SOLUSH

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  # string = DIGITS value
  digit_arr = str.chars.map do |chr|
    DIGITS[chr]
  end
  value = 0
  digit_arr.each do |chr|
    value = 10 * value + chr
  end
  value
end
=end
string_to_integer('99')
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570