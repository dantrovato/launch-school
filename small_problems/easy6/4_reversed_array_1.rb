=begin
Reversed Arrays (Part 1)
Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed into this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples:

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!(list) # => []
list == []

=end



p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

p list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) # => []
p list == []









=begin

MY SLUSH
def reverse!(array)
  array2 = []

  until array.length == 0
    array2 << array.pop
  end

  until array2.length == 0
    array << array2.shift
  end

  p array
end

Hide Solution & Discussion
Solution
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

Discussion
This solution is straightforward; it sets one index to point to the beginning of
the array, another index to point to the end of the array, and then walks through
the Array exchanging elements at each step. Since we update the Array in place,

we name the method reverse! instead of reverse.

Note that the loop terminates at the middle of the list. If we continued, we would
end up rebuilding the original array.

The most interesting part of this code is the parallel assignment on line 6; this
is a Ruby idiom for exchanging two values without requiring an intermediate
variable. It's a handy idiom to remember.

In practice, of course, you would probably use Array#reverse! instead of writing
this method. It helps, though, to write your own versions of standard methods so
you can understand how they work, and how to use those principles in your own code.
=end
