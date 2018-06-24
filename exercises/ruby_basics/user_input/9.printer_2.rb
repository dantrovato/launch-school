# In an earlier exercise, you wrote a program that prints
# 'Launch School is the best!' repeatedly until a certain number of lines
#  have been printed. Our solution looked like this:

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.chomp
  break if number_of_lines == 'q'
  if number_of_lines.to_i < 3
    puts ">> That's not enough lines."
  else
    number_of_lines.to_i.times do
      puts 'Launch School is the best!'
    end
  end
end
