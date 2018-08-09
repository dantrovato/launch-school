# Find the index of the first name that starts with "Be"
#

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# my solush 1
jasper = flintstones.index do |name, index|
  name[0..1] == 'Be'
end

p jasper
p "============================"
# my solush 2
john = flintstones.find_index do |item|
  item.start_with?("Be")
end

p john
p "============================"

# my solush 3
flintstones.each do |name|
  p flintstones.index(name) if name[0, 2] == 'Be'

end
p "============================"

# actual solush

p flintstones.index { |item| item[0, 2] == 'Be' } # syntactic sugar for item.slice(0, 2)
p flintstones.index { |item| item.slice(0, 2) == 'Be' }
p flintstones.index { |item| item[0..1] == 'Be' }
p flintstones.rindex { |item| item[0, 1] == 'B' } # returns last!!
