# ex 7
array = [[13, 43, 23], [11, 43, 65], [3, 55], [3, 54, 11]]
p array.sort
















# ex 8
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
john = arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end

john

puts '================='

# ex 9

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
