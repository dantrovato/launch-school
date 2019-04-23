=begin
Palindromic Substrings
Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards
as it does backwards. The return value should be arranged in the same sequence as
the substrings appear in the string. Duplicate palindromes should be included multiple
times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay
attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
  "Abc-bA" are. In addition, assume that single characters are not palindromes.

Examples:

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

METHODS FROM PREVIOUS EXCERCISES

def substrings_at_start(string)
  result = []
  string.chars.each_with_index do |chr, index|
    result << string[0..index]
  end
  result # => ["a", "ab", "abc"...]
end

def substrings(string)
  result = []

    (0..string.size).each do |index|
      result.concat(substrings_at_start(string[index..-1]))
      index += 1
    end
  result
end

=end

def substrings_at_start(string)
  result = []
  string.chars.each_with_index do |chr, index|
    result << string[0..index]
  end
  result # => ["a", "ab", "abc"...]
end

def substrings(string)
  result = []

    (0..string.size).each do |index|
      result.concat(substrings_at_start(string[index..-1]))
      index += 1
    end
  result
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']

p palindromes('hello-madam-did-madam-goodbye') == [
 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
 '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


















=begin
MY SLUSH

def palindromes(string)
  result = substrings(string).select do |str|
    str == str.reverse && str.size > 1
  end
  p result
end

Hide Solution & Discussion
Solution
def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end
Discussion
Again, this problem is much easier if you use the method from the previous exercise.
Building this method from scratch is sure to leave you with an aching head.

We'll use a helper method here, palindrome?, to test whether any given string is a
palindrome. Note that we need to verify the size of the string as well as its
reversibility.

The main method just calls substrings from the previous exercise, and then constructs
a list of all of the return values that are palindromic.

Further Exploration
Can you modify this method (and/or its predecessors) to ignore non-alphanumeric
characters and case?
=end
