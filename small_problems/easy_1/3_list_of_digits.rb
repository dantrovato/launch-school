# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.
#
# Examples:
#
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

def digit_list(int)
  #ex 12345
  arr = []
  int.to_s.split('').map do |x|
    arr << x.to_i
  end
=begin
ORIGINAL LOGIC
string = int.to_s # => ["12345"]
arr_of_strings = string.split('') #=> ["1", "2", "3", "4", "5"]
arr_of_strings.map do |x|
  arr << x.to_i
end
=end
  p arr
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
