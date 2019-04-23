=begin
Rotation (Part 1)
Write a method that rotates an array by moving the first element to the end of
the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
=end



p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true









=begin
MY SLUSH
def rotate_array(arr)
  result = []
  index = 1
  arr_length = arr.size - 1
  arr_length.times do |num|
    result << arr[index]
    index += 1
  end
  result  << arr.first
  p result
end

Hide Solution & Discussion
Solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end
Discussion
There are multiple ways to solve this, but we show just one.

Our solution simply slices everything out of the array except the first element,
then appends the original first element to the end. Note that we must be careful
to not mutate array.

Further Exploration
Write a method that rotates a string instead of an array. Do the same thing for
integers. You may use rotate_array from inside your new method.
=end
