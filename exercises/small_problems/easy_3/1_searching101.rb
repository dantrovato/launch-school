# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.
#
# Examples:
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
#
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

puts "Enter the 1st number:"
first = gets.chomp.to_i
puts "Enter the 2st number:"
second = gets.chomp.to_i
puts "Enter the 3st number:"
third = gets.chomp.to_i
puts "Enter the 4st number:"
fourth = gets.chomp.to_i
puts "Enter the 5st number:"
fifth = gets.chomp.to_i
puts "Enter the last number:"
last = gets.chomp.to_i

arr = [first, second, third, fourth, fifth]

if arr.include?(last)
  puts "the number #{last} appears in #{arr}"
else
  puts "the number #{last} does not appear in #{arr}"
end



#
