# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
puts '=================== MAIN DIVIDER ==================='

numbers = %w(g e t f u k t)
numbers.each do |number|
  p number
  numbers.shift(1)
end

p numbers
=begin
index 0 print g.
take off g
=> (e t f u k t)

index 1 print t
take off e
=> (t f u k t)

index 2
print u
take off t
=> (f u k t)

index 3
print t
take off f


=end

puts '======================='
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# iteration 0, prints 1 pops 4 off
# arr [1 2 3]
# iteration 1 prints next one; 2. pops 3 off
# returns the popped ones; [3, 4]
