# throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# my solush
john = ages.select { |k, v| v < 100 }
p john

# also:

ages.select! { |k, v| v < 100 }

p ages

ages.keep_if { |k, v| k.start_with?('H') || k.start_with?('l'.upcase)}

p ages
