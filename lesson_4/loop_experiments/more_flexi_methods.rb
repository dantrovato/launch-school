# More Flexible Methods
# The examples we've looked at so far have taken one argument (the collection to be iterated over) and performed one operation to that collection. By defining our methods in such a way that we can pass in additional arguments to alter the logic of the iteration, we can create more flexible and generic methods.
#
# Recall earlier we wrote a select_fruit method that selected fruits out of the produce_list hash of fruits and vegetables. Suppose we wish to now write a more generic general_select method so that we can specify whether we're interested in selecting fruits or vegetables. Here's how we could build such a method:
#
# def general_select(produce_list, selection_criteria)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}
#
#   loop do
#     break if counter == produce_keys.size
#
#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]
#
#     # used to be current_value == 'Fruit'
#     if current_value == selection_criteria
#       selected_fruits[current_key] = current_value
#     end
#
#     counter += 1
#   end
#
#   selected_fruits
# end
#
# To use the above general_select method, we have to pass in a collection and some selection criteria. In this specific case, the criteria is hardcoded to match with a value: if there's a match between the criteria and value, then the current key-value pair is selected into the selected_fruits hash. Here's how we can use this method:
#
# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }
#
# general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
# general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
# general_select(produce, 'Meat')      # => {}
# Note that we chose to not name the method select because of collision with Kernel#select, which does something completely different than what we're talking about here with collections.
#
# Continuing on with the idea of building generic methods, let's update our double_numbers method to not only be able to double the values in an array, but to multiply by any number. For example, let's create a method called multiply that can take an additional argument to determine the transformation criteria.
#
# my_numbers = [1, 4, 3, 7, 2, 6]
# multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
# Try coding a method that allows you to multiply every array item by a specified value:

def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    # used to be current_value == 'Fruit'
    if current_value == selection_criteria
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
general_select(produce, 'Meat')      # => {}

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
