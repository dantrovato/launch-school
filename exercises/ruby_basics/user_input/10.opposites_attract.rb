# # Write a program that requests two integers from the user, adds them together,
#  and then displays the result. Furthermore, insist that one of the integers be
#  positive, and one negative; however, the order in which the two integers are
#  entered does not matter.
#
# Do not check for positive/negative requirement until after both integers are
# entered, and start over if the requirement is not met.
#
# You may use the following method to validate input integers:
#
# ---------------- MY SOLUSH
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

positive = []
negative = []

while positive.size == 0 || negative.size == 0
  puts "enter positive or negative integer:"
  input = gets.chomp

  if valid_number?(input)
    input.to_i >= 0 ? positive << input.to_i : negative << input.to_i
    if positive.size == 2 || negative.size == 2
      puts "sorry. One integer must be positive, one must be negative."
      puts "please start over."
      next
    end
  else
    puts "hey, buster. that's not a valid number"
  end
end

result = positive.last + negative.last
puts "#{positive.last} + #{negative.last} = #{result}"
