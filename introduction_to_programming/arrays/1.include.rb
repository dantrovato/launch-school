arr = [1, 3, 5, 7, 9, 11]
number = 3

#puts arr.include?(3)

arr.each do |num|
  if num == number
    puts "#{num} is in the array."
  end
end
