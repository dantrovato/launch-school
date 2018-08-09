# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0, 3] # syntactic sugar for .slice(0, 3)
end

p flintstones

# my solush
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |name|
  name.slice(name[0, 3])#(name[3, name.size - 3])
end

p flintstones
