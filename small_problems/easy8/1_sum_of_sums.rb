=begin

Sum of Sums
Write a method that takes an Array of numbers and then returns the sum of the
sums of each leading subsequence for that Array. You may assume that the Array
always contains at least one number.

Examples:

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

=end
require 'pry'


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35











=begin
MY SLUSH
def sum_of_sums(array)
  result = []
  array.each_with_index do |num, index|
    result << array[0..index].sum
  end
  p result.sum
end
MY SLUSH 2
def sum_of_sums(array)
  result = []
  array.each_with_index do |num, index|
    result << array[0..index]
  end
  p result.flatten.sum
end


Hide Solution & Discussion
Solution
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end
Discussion
This solution is a bit dense, so let's break it up piece by piece.

For this exercise, we want to compute the sum of sums. One way to do that is to
  have a variable for the total sum.

Then, we can sum up subsets of our array and add each of those sums onto this
sum_total variable.

Once we have computed the final sum(one that contains all numbers in our array),
and added that to our total sum, then we are finished.

1.upto(numbers.size) is used to generate the correct size for each subset of our
numbers array. We use number.slice(0, count) to get that subset, and then reduce(:+)
is used on the current subset to add up all its elements.
=end
