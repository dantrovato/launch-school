# How does count treat the block's return value? How can we find out?

john = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p john # => 2

# solush
# If a block is given, counts the number of elements for which the block returns a true value.
#
# Based on this information, we can conclude that count only counts an element if the block's return value evaluates to true. This means that count considers the truthiness of the block's return value.
