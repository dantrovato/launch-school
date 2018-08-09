# throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# my solush 1
john = ages.select { |k, v| v < 100 }
p john
p "=================="
# my solush 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.each do |name, age|
  if age > 100
    ages.delete(name)
  end
end

p ages
p "=================="

# also:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! { |k, v| v < 100 }

p ages
p "=================="

# or
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.keep_if { |k, v| k.start_with?('H') || k.start_with?('l'.upcase)}
p ages
