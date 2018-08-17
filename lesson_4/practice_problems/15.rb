# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# MY SOLUSH
new_arr = arr.map do |hash|
  hash.select do |key, value|
    value.all? do |num|
      num.even?
    end
  end
end

p new_arr

# ACTUAL SOLUSH

new_arr2 = arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p new_arr2
