=begin
Halvsies
Write a method that takes an Array as an argument, and returns two Arrays that
contain the first half and second half of the original Array, respectively. If
the original array contains an odd number of elements, the middle element should
be placed in the first half Array.

Examples:

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

=end



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]



















=begin

MY SLUSH
def halvsies(array)
  array_1 = []
  array_2 = []
  index = 0
  array.each do |num|

    if array.size.odd? && index < array.size / 2 + 1
      array_1 << num
      index += 1
    elsif index < array.size / 2
      array_1 << num
      index += 1
    else
      array_2 << num
      index += 1
    end
  end

  result = []
  result << array_1
  result << array_2

  p result
end

Hide Solution & Discussion
Solution
def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end
Discussion
Our task is to split this array into two pieces. A first and second half. We get
the size of the first by dividing the original array's size by two. If the
original array is odd in size, then a call to ceil will account for that, making

the first half larger than the second by 1. The second half is created based on
the size of the first half. It is made of the first element in array that is not
in the first half and any remaining elements left in the original array. To
create both halves, the Array#slice method is used. Finally, our halvsies array
is created by specifying
our two halves as the sole elements of a new array.

Further Exploration
Can you explain why our solution divides array.size by 2.0 instead of just 2?

This is but one way to solve this problem. What solution did you end up with?
Was it similar or entirely different?
=end
