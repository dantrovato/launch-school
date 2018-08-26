# Practice Problem 1
# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# MY SLUSH NOT MUTATING THE ORIGINAL

integer_arr = arr.map do |str|
  str.to_i
end

sorted_integers = integer_arr.sort! do |a, b|
  b <=> a
end
sorted_str = sorted_integers.map do |str|
  str.to_s
end

p sorted_str


# MY SLUSH YES MUTATING THE ORIGINAL

arr.sort! do |a, b|
  b.to_i <=> a.to_i
end

p arr
