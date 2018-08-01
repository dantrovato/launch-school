# Let's now take a look at an example with hashes. In this example we want
# to select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  counter = 0
  keys = hsh.keys # => %w(apple carrot pear broccoli)
  fruit = {}

  loop do
    break if counter == keys.size
    current_key = keys[counter] # => 'apple', ect...
    if hsh[current_key] == 'Fruit'
      fruit[current_key] = 'fruit'
    end
    counter += 1
  end
  fruit
end

p select_fruit(produce)
