# Build a program that displays when the user will retire and how many years she
# has to work till retirement.
#
# Example:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i
years_until_retirement = retirement_age - age
retirement_year = 2016 + years_until_retirement

puts "It's 2016. You will retire in #{retirement_year}"
puts "You have only #{retirement_year - 2016} years of work to go!"
