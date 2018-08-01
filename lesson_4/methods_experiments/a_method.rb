def a_method(arr)

  john = arr.select do |num|
     num > 2
     puts 'hi'
     num > 2
  end
  john
end

my_arr = [1, 4, 7, 2, 6]

p a_method(my_arr)

p my_arr
