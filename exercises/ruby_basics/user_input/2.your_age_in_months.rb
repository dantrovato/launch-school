# Write a program that asks the user for their age in years, and then converts
# that age to months.

puts "enter your age in years"

age = gets.chomp

puts "you are #{age.to_i * 12} months old"
