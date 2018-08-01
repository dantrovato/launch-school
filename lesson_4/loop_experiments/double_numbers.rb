# We'll now move on to some transformation examples where the entire transformation code is within a method definition. The code below multiplies each element in the collection by 2.
#
# def double_numbers(numbers)
#   doubled_numbers = []
#   counter = 0
#
#   loop do
#     break if counter == numbers.size
#
#     current_number = numbers[counter]
#     doubled_numbers << current_number * 2
#
#     counter += 1
#   end
#
#   doubled_numbers
# end
# We can invoke the method like this.
#
# my_numbers = [1, 4, 3, 7, 2, 6]
# double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
# Note that the double_numbers method returned a new array with every element doubled, and that the original array is not mutated. In other words, my_numbers is still [1, 4, 3, 7, 2, 6]. This isn't a requirement, but just a consequence of how we implemented the method.
#
# If we wanted to, we could've easily decided that mutating the method argument is the right approach. Can you implement a double_numbers! method that mutates its argument?
#

# my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2

    counter += 1
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers)
p my_numbers
