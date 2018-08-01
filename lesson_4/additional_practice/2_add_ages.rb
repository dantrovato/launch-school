# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# my solush:
p ages.values.sum

p ages.values.reduce(:+)
p ages.values.inject(:+) #both do the same

total = 0
john = ages.each do |k, v|
  total += v
end

p total
