=begin
# Delete vowels
# Write a method that takes an array of strings, and returns an array of
# the same string values, except with the vowels (a, e, i, o, u) removed.
#
# Example:
#
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

=end



p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


















=begin

# Solution
# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end
# Discussion
# Our solution uses String#delete to remove all of the vowels from each string.
We use map to iterate through the array since it is ideal for transformations
like this.
#
# Further Exploration
# Ruby has all sorts of String methods that could accomplish this task. How did
you end up solving this exercise?
=end
