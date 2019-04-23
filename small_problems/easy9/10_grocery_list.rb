=begin

Grocery List
Write a method which takes a grocery list (array) of fruits with quantities and
converts it into an array of the correct number of each fruit.

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

=end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]














=begin
MY SLUSH
def buy_fruit(array)
  result = []
  array.each do |sub_array|
    sub_array[1].times do
      result << sub_array[0]
    end
  end
  result
end
MY SLUSH 2
def buy_fruit(array)
  result = array.map do |sub_array|
    res = []
    sub_array[1].times do
      res << sub_array[0]
    end
    res
  end

  p result.flatten
end

Hide Solution & Discussion
Solution
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end
Discussion
We have two values in each of the inner arrays. The first is the type of fruit.
The second is the quantity we need. The first thing to realize is that we can
partially achieve what we want by multiplying the first half by the second:

fruit * quantity => "applesapplesapples"
We need this in separate arrays though:

[fruit] * quantity => ["apples", "apples", "apples"]
If we use Array#map to apply this to each element in the array, all we need is
Array#flatten to reduce it down to a single large array.
=end
