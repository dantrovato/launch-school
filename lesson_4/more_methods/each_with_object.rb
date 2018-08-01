john = ['handsome', 'fava', 'tall']

johnski = john.each_with_object([]) do |item, arr|
  arr << item + 'ski'

end

p johnski
