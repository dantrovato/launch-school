=begin
Double Char (Part 1)
Write a method that takes a string, and returns a new string in which every
character is doubled.

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

=end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
















=begin


Hide Solution & Discussion
Solution
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end
Discussion
This solution is straightforward. We initialize a result string, then iterate
through the original string while appending each character to the result 2 times.
Finally, we return the result string.
=end
