# Modify the following code so that the loop stops if number is between 0 and 10.


# my solush
puts "my solush"
loop do
  number = rand(100)
  if number >= 0 && number <= 10
    break
  else
    puts number
  end
end

=begin
loop do
  number = rand(100)
  if number.between?(0, 10)
    break
  else
    puts number
  end
end
=end

# actual solush
puts "-----------"
puts "actual solush"
puts "-----------"

loop do
  number = rand(100)
  puts number

  if number.between?(0, 10)
    break
  end
end
