puts "enter number between 0 and 100"
input = gets.chomp.to_i


case 

when input >= 0 && input <= 50
  puts "number is between 0 and 50"

when input >= 51 && input <= 100
  puts "number is between 51 and 100"
when input > 100
  puts "whoa, that's a whopper of a number"
else
  puts "you sure that's above a zero?"

end
