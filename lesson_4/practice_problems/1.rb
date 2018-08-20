# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.


# MY SOLUSH
hash = flintstones.each_with_object({}) do |name, hsh|
  hsh[name] = flintstones.index(name)
end

p hash

# ACTUAL SOLUSH
flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index

end

p flintstones_hash
