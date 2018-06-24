# First to Five
#
# The following code increments number_a and number_b by either 0
# or 1. loop is used so that the variables can be incremented more
# han once, however, break stops the loop after the first
# iteration. Use next to modify the code so that the loop iterates until
# either number_a or number_b equals 5. Print "5 was reached!"
# before breaking out of the loop.
#
number_a = 0
number_b = 0
=begin
loop do
  number_a += rand(2)
  number_b += rand(2)

  break if number_b >= 5 || number_a >= 5
  puts "5 was reached!"
end

puts number_a
puts number_b
=end
loop do
  puts "a: #{number_a += rand(2)}"
  puts "b: #{number_b += rand(2)}"
  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end

# interesting use of next in a loop. when it evaluates to
#true... or, in this "unless" case, to false, it will
#skip the rest of the loop and go back to the top. very handy use
