# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not
# worry about validating the input.
#
# Example
#
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

puts "Enter the first number:"
first_num = gets.chomp.to_i
puts "Enter the second number:"
second_num = gets.chomp.to_i
addition = first_num + second_num
subtraction = first_num - second_num
multiplication = first_num * second_num
division = first_num / second_num
modulo = first_num % second_num
exponentiation = first_num ** second_num
puts "#{first_num} + #{second_num} = #{addition}"
puts "#{first_num} - #{second_num} = #{subtraction}"
puts "#{first_num} * #{second_num} = #{multiplication}"
puts "#{first_num} / #{second_num} = #{division}"
puts "#{first_num} % #{second_num} = #{modulo}"
puts "#{first_num} **  #{second_num} = #{exponentiation}"
