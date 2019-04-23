=begin
Max rotation rotates leftmost digit to the right, then takes second digit of new
number and does the same until it's iterated through entire number
=end
def rotate_array(array)
  array[1..-1] + [array[0]]
end

# =>                        735291, 6
def rotate_rightmost_digits(number, n) #
  all_digits = number.to_s.chars #  =>

  # =>
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1]) #
  all_digits.join.to_i # 321759
end

# =>

 p max_rotation(735291) == 321579
 p max_rotation(3) == 3
 p max_rotation(35) == 53
 p max_rotation(105) == 15 # the leading zero gets dropped
 p max_rotation(8_703_529_146) == 7_321_609_845










=begin

SLUSH FOR THE FIRST 4 TEST CASES - LAST ONE STILL NOT WORKING
def max_rotation(number)
  array = []
  result = 0
  zeroes_count = number.to_s.count('0')
  starting_index = number.to_s.size - zeroes_count# 3

  starting_index.times do          #

  number = rotate_rightmost_digits(number, starting_index)
  number = number.to_s #
  array <<  number[0].to_i #
  number = number[1..-1].to_i
  starting_index -= 1
  end

  array.each do |num|
    result = result * 10 + num
  end
  p result
end


Hide Solution & Discussion
Solution
def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end
Discussion
Our max_rotation method begins by first determining how many digits we have, then
starts up a loop. The loop repeatedly rotates the number, starting with the rightmost
n digits, then the rightmost n - 1 digits, and so on, until we get down to the last
2 digits. (We could also include 1, but it is not needed since it does not modify
  the number when we rotate just the last digit.)

Further Exploration
Assume you do not have the rotate_rightmost_digits or rotate_array methods. How
would you approach this problem? Would your solution look different? Does this
3 part approach make the problem easier to understand or harder?
=end
