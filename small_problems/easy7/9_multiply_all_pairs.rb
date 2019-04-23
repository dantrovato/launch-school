=begin
Multiply All Pairs
Write a method that takes two Array arguments in which each Array contains a list
of numbers, and returns a new Array that contains the product of every pair of
numbers that can be formed between the elements of the two Arrays. The results
should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
=end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
























=begin
MY SLUSH
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |sub_arr| sub_arr.inject(:*) }.sort
end

Hide Solution & Discussion
Solution
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end
Discussion
For the above solution we have two iterators, one for the first array and one for
the second. We want all the different combinations of multiples, duplicates
included. To do this, we need to iterate through each item in the first array,
  and then multiply it by each item in the second array. Finally, we sort our
  array of products and return that array.

Just for fun, here is a more compact solution.

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end
Further Exploration
What do you think? Did you go about solving this exercise differently? What method
did you end up using?
=end
