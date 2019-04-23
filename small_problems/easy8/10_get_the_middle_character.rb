=begin
Get The Middle Character
Write a method that takes a non-empty string argument, and returns the middle
character or characters of the argument. If the argument has an odd length, you
should return exactly one character. If the argument has an even length, you
should return exactly two characters.

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

=end
#          'Launch'



p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
















=begin

MY SLUSH
def center_of(string)
  middle_letter = ''
  first_half = string.slice(0, (string.size / 2.0).ceil)
  second_half = string.slice(first_half.size, (string.size - first_half.size))
  middle_letter = string.size.odd? ? first_half[-1] : first_half[-1] + second_half[0]
  middle_letter
end

MY SLUSH 2
def center_of(string)
  center = string.size / 2
  return string[center] if string.size.odd?
  return string[center-1, 2] if string.size.even?
end

Hide Solution & Discussion
Solution
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end
Discussion
This is mildly tricky, but not terribly so. The main difficulty here is understanding
the difference between the index number and the character number. Take the string
in the first test for example: "I love ruby". The third character is "l", however,
the third index is "o". This is because, when counting characters, you start at 1,
but when counting indexes, you start at 0.

The first step is to determine the index of the centermost character in the string.
This is easy for odd-length strings: the center point of a 5 character string, for
instance, is the 3rd character, or index 2. For even-length strings, things are
slightly more complicated: we need the index of two characters, the character to
the left of the centerpoint, and the character to the right. For a 4 character
string, these are the 2nd and 3rd characters, or indexes 1 and 2.

In both cases, we can divide the string length by 2 to get either the index we want
(5 / 2 == 2 for our 5 character string), or the index of the character just to the
right of center (4 /2 == 2 for our 4 character string). All that remains after
determining these values is to extract the appropriate character(s) from the string.
For odd-lengthed strings, we just get the middlemost character, and for even-lengthed
strings, we get the character at the indicated index, and the character just prior
to it; we use the substring-ing form of the String#[] method to extract 2
characters at center_index - 1.
=end
