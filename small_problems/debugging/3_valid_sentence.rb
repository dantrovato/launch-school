=begin
101-109 - Small ProblemsDebuggingValid Series?

Valid Series?
The valid_series? method checks whether a series of numbers is valid. For the
purposes of this exercise, a valid series of numbers must contain exactly three
odd numbers. Additionally, the numbers in the series must sum to 47.

Unfortunately, our last test case is not returning the expected result. Why is
  that?

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false
=end

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false


=begin


Hint
Take note of which test case is failing. Which validity requirements does it meet
  or fail?





Hint
Examine the two places where we might return from our method. What is the return
value at each of them?







Hide Solution & Discussion
Solution
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end
Discussion
On line 5 of our original code, we mistakenly performed assignment rather than
comparison. == performs equality comparison and returns a Boolean, while = is
used for variable assignment and returns the assigned value. In this case the
  assigned value was 3, which will always be evaluated as a truthy condition in
  our ternary operator. The method therefore returned true for all series of
  numbers that sum to 47, irrespective of how many odd numbers it contains.

Further Exploration
If you take a close look at odd_count == 3 ? true : false, you see that the
equality comparison odd_count == 3 itself returns a Boolean. Is the ternary
operator on line 5 really necessary in order to return a Boolean from our method?
=end
