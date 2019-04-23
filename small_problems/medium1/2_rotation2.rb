=begin
Rotation (Part 2)
Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

- sudo
  -



=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digit(number, n)

end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917



















=begin
MY SLUSH
def rotate_rightmost_digits(original_num, num_to_last)
  array = original_num.to_s.chars.map(&:to_i)
  first_part = array.slice(0..-num_to_last - 1)
  rotate_section = array.slice(-num_to_last..-1)
  second_part = rotate_array(rotate_section)
  result_arr = first_part + second_part

  result = 0
  result_arr.each do |num|
    result = result * 10 + num
  end
  p result
end

MY SLUSH 2

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars # => ["7", "3", "5", "2", "9", "1"]

  processed_array = all_digits[0..-n -1] << rotate_array(all_digits[-n..-1])
  processed_array = processed_array.flatten.map(&:to_i) # =>  [7, 3, 5, 2, 9, 1]

  value = 0
  processed_array.each do |num|
    value = value * 10 + num
  end
  value
end

Hide Solution & Discussion
Solution
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
Discussion
Don't be alarmed if your solution is considerably longer than our solution, so
long as it produces the correct results.

Since we will be working with rotate_array, we need an array. To do this, we simply
  convert the number to a string, and then split it out into its individual digits.
  That's the easy part.

Now the tricky part. First, there's this:

all_digits[-n..-1]
This construct returns the last n elements of the all_digits array. It's a handy
shorthand to know about, as you're likely to be using it more than you might think.

We pass all_digits[-n..-1] to our rotate_array method from the previous exercise,
and that method returns a new array with the digits rotated as needed.

We then assign the return value of rotate_array to all_digits[-n..-1]. When an
expression like this appears on the left side of an assignment, it means, "replace
the last n elements with the values to the right of the equal sign". And that's
exactly what happens here: we replace the last n digits with the rotated digits.

Finally, we convert the all_digits array back to an integer.
=end
