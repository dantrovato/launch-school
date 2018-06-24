puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3 nor 4"
end

puts "Put in a number"
x = gets.chomp.to_i

if x == 3 then puts "x is 3" end

puts "Put in a number"
b = gets.chomp.to_i

puts "b is 3" if b == 3

puts "Put in a number"
c = gets.chomp.to_i

puts "c is NOT 3" unless c == 3
