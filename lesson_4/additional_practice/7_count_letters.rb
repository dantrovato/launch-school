# Create a hash that expresses the frequency with which each letter occurs in
# this string:
#
# statement = "The Flintstones Rock"
# ex:
#
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

puts 'first test'
statement = "The Flintstones Rock"

# my solush
john = statement.split('').each_with_object({}) do |chr, hash|
  if hash.has_key?(chr)
    hash[chr] += 1
  else
    hash[chr] = 1
  end
end

p john
p statement


# --------------
# actual solush
puts 'second test ----------------------------'
angry_statement = "Get out of my face AARRGGHH"

letters = ('A'.. 'z').to_a

hash = {}

letters.each do |chr|
  letter_count = angry_statement.scan(chr).count
  hash[chr] = letter_count if letter_count > 0
end

p hash

puts 'third test ----------------------------'
# dont get why it doesn't give the same result in reverse
angry_statement = "Get out of my face AARRGGHH"

letters = ('A'.. 'z').to_s

alt_hash = {}

angry_statement.each_char do |chr|
  letter_count = letters.scan(chr).count
  alt_hash[chr] = letter_count if letter_count > 0
end

p alt_hash
