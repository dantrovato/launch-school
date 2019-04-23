=begin
Multiplicative Average
Write a method that takes an Array of integers as input, multiplies all the numbers
together, divides the result by the number of entries in the Array, and then prints
the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:

show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667
=end



p show_multiplicative_average([3, 5])
#The result is 7.500

p show_multiplicative_average([6])
#The result is 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667




















=begin
MY SLUSH
def show_multiplicative_average(array)
  product = array.inject(:*)
  result = (product.to_f / array.size.to_f)
  puts "#{sprintf('%.3f', result)}"
end

Hide Solution & Discussion
Approach/Algorithm
Hint: You may need to use Kernel#format.

Solution
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts format('%.3f', average)
end
Discussion
We could use Enumerable#inject to compute the product, but for simplicity, we
use #each instead. Once we have the desired product, we calculate the multiplicative
average and format it with three decimal places.

Further Exploration
What happens if you omit the call to #to_f on the first line of our method?
=end
