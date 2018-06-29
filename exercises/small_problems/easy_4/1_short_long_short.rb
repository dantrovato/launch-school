# Write a method that takes two strings as arguments, determines
#  the longest of the two strings, and then returns the result
#  of concatenating the shorter string, the longer string, and
#  the shorter string once again. You may assume that the strings
#   are of different lengths.
#
# Examples:
#
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

def short_long_short(a, b)

  if a.length < b.length
    puts a + b + a
  elsif
    a.length > b.length
    puts b + a + b
  end
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
