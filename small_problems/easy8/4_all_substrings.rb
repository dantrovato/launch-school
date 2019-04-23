=begin
All Substrings
Write a method that returns a list of all substrings of a string. The returned
list should be ordered by where in the string the substring begins. This means
that all substrings that start at position 0 should come first, then all substrings
that start at position 1, and so on. Since multiple substrings will occur at each
position, the substrings at a given position should be returned in order from
shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the previous
exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

SUBSTRINGS AT START FROM PREVIOUS EXERCISE:

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

- sudo
  - make string into array of chars
  - call substrings_at_start on original string for each char

=end

def substrings_at_start(string) # 'abcde'
  result = []
#0.upto(             4 )     |    |
  0.upto(string.size - 1) do |index|
#
    result << string[0..index]
  end
  result # []
end

#              'abcde'


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]












=begin
MY SLUSH
def substrings(string)
  result = []
  start_index = 0
  string.size.times do
    string.chars.each_with_index do |el, index|
      result << string[start_index..index]
    end
    start_index += 1
  end
  final_arr = result.select do |el|
    el.size > 0
  end
  p final_arr
end
MY SLUSH 2
def substrings(string)
  result = []
  index = 0
  string.size.times do
    result.concat(substrings_at_start(string[index..-1]))
    index += 1
  end
  p result
end

MY SLUSH 3
def substrings(string)
  result = []
  0.upto(string.size) do |count|
    result << substrings_at_start(string[count..-1])
  end
  p result.flatten
end

MY SLUSH 4
def substrings(string)
  result = []
  string.chars.each_with_index do |chr, index|
    result << substrings_at_start(string[index..-1])
  end
  p result.flatten
end

Hide Solution & Discussion
Solution
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end
Discussion
This problem is a lot easier if you use the substrings_at_start method from the
previous exercise. Without that method, it can be really hard to wrap your head
around the requirements and come up with a working solution.

The solution boils down to just repeatedly running substrings_at_start on
increasingly smaller substrings of string, starting with the 1st character, then
the 2nd character, and so on. The results are all concatenated to our results
Array which is subsequently returned to the caller.

Our substrings_at_start method returns substrings in order from shortest to longest,
and substrings itself works from left to right in the string. Our results are thus
arranged in the desired sequence.
=end
