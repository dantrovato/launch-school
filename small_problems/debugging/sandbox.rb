def method(query)
  query.select do |sub_array|
    sub_array.select { |key, value| key == x, value == y }
  end
end
