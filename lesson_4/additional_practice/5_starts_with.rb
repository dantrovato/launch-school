# Find the index of the first name that starts with "Be"
#

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# my solush

john = flintstones.find_index do |item|
  item.start_with?("Be")
end

p john

# actual solush

p flintstones.index { |item| item[0, 2] == 'Be' }
p flintstones.index { |item| item[0..1] == 'Be' }
p flintstones.rindex { |item| item[0, 1] == 'B' } # returns last!!
