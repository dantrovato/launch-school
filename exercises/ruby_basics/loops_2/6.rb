# Empty the Array
#
# Given the array below, use loop to remove and print each name.
#  Stop the loop once names doesn't contain any more elements.
#

# my solush
names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  if names.size > 0
    p names.shift
  end
end

#actual solush

loop do
  puts names.shift

  break if names.empty?
end
