# Given the array below
#
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]


# my solush 1:
counter = 0

john = flintstones.each_with_object({}) do |item, hash|
  hash[item] = counter
  counter += 1
end

john

# --------------------
# solush 2:
hash = {}

dave = flintstones.each_with_index do |item, index|
  hash[item] = index
 end

p hash
