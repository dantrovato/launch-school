# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).


new_hash = ages.select do |name, age|
  age < 100

end

p new_hash
