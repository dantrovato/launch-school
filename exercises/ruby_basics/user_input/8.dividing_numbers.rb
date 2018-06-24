# Write a program that obtains two Integers from the user, then prints the
# results of dividing the first by the second. The second number must not be
# 0, and both numbers should be validated using this method:
#

 # ============================== MY SOLUSH

=begin
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

puts "please enter the numerator:"
numerator = nil
denumerator = nil

loop do #---------------------------NUMERATOR
  numerator = gets.chomp
  if valid_number?(numerator)
    break
  else
    puts "Invalid input. Only integers are allowed."
    puts "please enter a valid numerator:"
  end
end

loop do #--------------------------DENUMERATOR
  puts "please enter the denumerator:"
  denumerator = gets.chomp
  if valid_number?(denumerator)
    if denumerator.to_i <= 0
      puts "Invalid input. A denominator of 0 is not allowed."
      next
    else
      break
    end

  else
    puts "Invalid input. Only integers are allowed."
    puts "please enter a valid denumerator:"
  end
end

puts "result of this complex operation is: #{numerator.to_i / denumerator.to_i}"
=end

# ----------------------------- IMPROVED SOLUSH

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end


numerator = nil
denumerator = nil

loop do #---------------------------NUMERATOR
  puts "please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers are allowed."
end

loop do #--------------------------DENUMERATOR
  puts "please enter the denumerator:"
  denumerator = gets.chomp

  if valid_number?(denumerator)
    if denumerator.to_i <= 0
      puts "Invalid input. A denominator of 0 is not allowed."
      next
    else
      break
    end

  else
    puts "Invalid input. Only integers are allowed."
    puts "please enter a valid denumerator:"
  end
end

puts "result of this complex operation is: #{numerator.to_i / denumerator.to_i}"
