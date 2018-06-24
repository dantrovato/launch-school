# Suppose you have a hash h = {a:1, b:2, c:3, d:4}

h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.

puts "Get the value of key `:b`:"

puts h[:b]

puts h.fetch(:b)

#
# 2. Add to this hash the key:value pair `{e:5}`

puts "Add to this hash the key:value pair `{e:5}:"

h[:e] = 5

puts h
#
# 3. Remove all key:value pairs whose value is less than 3.5
#
puts " Remove all key:value pairs whose value is less than 3.5:"

#seems to work with both .each and .select
h.each do |k, v|
  if v < 3.5
    h.delete(k)
    h.delete(v)
  end
end

puts h

# ACTUAL SOLUSH

h.delete_if {|k,v| v < 3.5 }
