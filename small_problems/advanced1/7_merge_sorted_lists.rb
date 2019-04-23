=begin
101-109 - Small ProblemsAdvanced 1Merge Sorted Lists

Merge Sorted Lists
Write a method that takes two sorted Arrays as arguments, and returns a new Array
that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. You
must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.

Examples:

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]


BEFORE EXPERIMENTING WITH CASE STATEMENT
def merge(arr1, arr2)
  result = []
  larger_arr = arr1.size >= arr2.size ? arr1 : arr2
  shorter_arr = larger_arr == arr1 ? arr2 : arr1

  larger_arr.each_with_index do |num, index|
    if larger_arr[index] == nil
      result << shorter_arr[index]
    elsif shorter_arr[index] == nil
      result << larger_arr[index]
    elsif larger_arr[index] <= shorter_arr[index]
      result << larger_arr[index] << shorter_arr[index]
    elsif shorter_arr[index] <= larger_arr[index]
      result << shorter_arr[index] << larger_arr[index]
    end
  end
  p result
end

=end

require 'pry'

def merge(array1, array2) # => [1, 5, 9], [2, 6, 8]
  result = []
  index2 = 0

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end
  p result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]





















=begin
MY NOT ALLOWED SLUSH
def marge(arr1, arr2)
  res = arr1.concat(arr2).flatten.sort
  p res
end
MY IMPERFECT SLUSH (doesn't work on test 2 :/ )

def merge(arr1, arr2)
  result = []
  larger_arr = arr1.size >= arr2.size ? arr1 : arr2
  shorter_arr = larger_arr == arr1 ? arr2 : arr1

  larger_arr.each_with_index do |num, index|
    case
      # if arrays are not of equal length:                        ----|
    when larger_arr[index] == nil then result << shorter_arr[index]  #|
    when shorter_arr[index] == nil then result << larger_arr[index]  #|
      #                                                           ----|

    when larger_arr[index] <= shorter_arr[index]
       result << larger_arr[index] << shorter_arr[index]


    when shorter_arr[index] <= larger_arr[index] then result << shorter_arr[index] << larger_arr[index]
    end
  end
  p result
end


Hide Solution & Discussion
Solution
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end
Discussion
This problem is a lot trickier than it looks, especially with the proviso that
you may not sort the result, but have to produce a sorted list. It's made even
harder by not allowing mutation.

The obvious solution is to walk through both arrays simultaneously, keeping track
of where you are in each array with appropriate indexes. We'll modify this a tiny
bit by using Array#each to iterate through the array, and use an index to track our
location in the array2.

With each iteration of array1, we copy all elements from array2 that are less than
or equal to the array1 value, incrementing our index as needed. Note that we need
to be careful to not try copying any values from array2 that aren't there. After
copying these elements, we then append the current value from array1, and start
the next iteration.

When the loops are done, we may be left with 1 or more items in array2 that were
not included in the results. The last step is to make sure they are included.

We did not write this method all in one go; it took several debugging rounds to
get just the right sequence of actions. It was not easy to get right.
=end
