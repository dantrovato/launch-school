# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

# MY SLUSH
flintstones.each_with_index do |name, index|
  if name[0, 2] == 'Be'
    index
  end
end

# ACTUAL SLUSH

idx = flintstones.index do |name|
  name[0, 2] == 'Be'
end

p idx
