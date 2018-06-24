# Reformat the following case statement so that it only takes up 5 lines.
#
# stoplight = ['green', 'yellow', 'red'].sample
#
# case stoplight
# when 'green'
#   puts 'Go!'
# when 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts "go"
when 'yellow' then puts "slow down"
when 'red'    then puts "stop!"
end
=begin
case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end
==================================
puts "go" if stoplight == 'green'
puts "slow down" if stoplight == 'yellow'
puts "stop" if stoplight == 'red'
=end
