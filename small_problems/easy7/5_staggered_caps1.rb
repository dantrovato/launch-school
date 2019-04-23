=begin
Staggered Caps (Part 1)
Write a method that takes a String as an argument, and returns a new String that
contains the original value using a staggered capitalization scheme in which every
other character is capitalized, and the remaining characters are lowercase.
Characters that are not letters should not be changed, but count as characters
when switching between upper and lowercase.

Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
=end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'























=begin
MY SLUSH
def staggered_case(string)
  down_string = []
  string.downcase.chars.each_with_index do |chr, index|
    if index.even?
      down_string << chr.upcase
    else
      down_string << chr
    end
  end # => []
  p down_string.join
end

Hide Solution & Discussion
Solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
Discussion
This solution simply iterates through the String while building another String one
character at a time, either uppercasing or lowercasing each character as needed.
Note that we never need to actually test whether a character is upper- or lowercase,
or even whether it is alphabetic: the upcase and downcase methods handle this
for us.

To keep track of whether we want to upcase or downcase each character, we define
a boolean variable need_upper that starts out as true. Each time we process a
character, we upcase it or downcase it based on the current state of need_upper.
We then toggle need_upper from true to false or false to true using
need_upper = !need_upper.

Further Exploration
Can you modify this method so the caller can request that the first character be
downcased rather than upcased? If the first character is downcased, then the
second character should be upcased, and so on.

Hint: Use a keyword argument.
=end
