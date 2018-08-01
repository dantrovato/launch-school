# Build a program that asks a user for the length and width of a
# room in meters and then displays the area of the room in both
# square meters and square feet.
#
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.
#
# Example Run
#
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

puts "Enter the length of the room in meters:"
meter_length = gets.chomp.to_i
puts "Enter the width of the room in meters:"
meter_width = gets.chomp.to_i
square_meter = meter_length * meter_width
square_foot = square_meter * 10.7639
puts "The area of the room is #{square_meter} square meters (#{square_foot} square feet)."
