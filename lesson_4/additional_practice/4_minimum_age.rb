# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# my solush

values = ages.values

youngest = values[0]

values.each do |age|
  if youngest > age
    youngest = age
  end
end

p youngest

# actual solush

p ages.values.max
p ages.values.min
