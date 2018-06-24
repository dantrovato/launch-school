# Convert the following case statement to an if statement.
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
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

if stoplight == 'green'
  puts 'go'
elsif stoplight == 'yellow'
  puts 'slow down'
elsif stoplight == 'red'
  puts 'stop'
end
