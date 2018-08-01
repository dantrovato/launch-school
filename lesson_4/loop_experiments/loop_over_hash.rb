number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

counter = 0
pets = number_of_pets.keys # => %w(dogs cats fish)

loop do
  break if counter >= number_of_pets.size
  current_pet = pets[counter]
  pet_counter = number_of_pets[current_pet]
  puts "I have #{pet_counter} #{current_pet}"
  counter += 1
end
