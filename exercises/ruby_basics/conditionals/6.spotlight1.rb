# In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.
#
# stoplight = ['green', 'yellow', 'red'].sample
# Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!"
#   if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts "go"
when 'yellow'
  puts "slow down"
when 'red'
  puts 'stop'
end
