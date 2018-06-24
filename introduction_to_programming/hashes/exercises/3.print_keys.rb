# Using some of Ruby's built-in Hash methods, write a program that loops
# through a hash and prints all of the keys. Then write a program that does
# the same thing except printing the values. Finally, write a program that
# prints both.


# MY SOLUSH
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts "person.keys.each:"
puts
person.keys.each {|k| puts k}
person.values.each {|v| v}
# actually i did't think to use the .each at the end. looked it up
puts
puts "below is the each iterator:"
puts
person.each {|k, v| puts "#{k} #{v}"}

# ACTUAL SOLUSH

puts
puts "below is the each_key:"
puts
person.each_key {|k| puts k}

puts
puts "below is the each_value:"
puts
person.each_value {|v| puts v}
