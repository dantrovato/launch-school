=begin
Staggered Caps (Part 2)
Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each letter.
The non-alphabetic characters should still be included in the return value; they
just don't count when toggling the desired case.

Example:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
=end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


















=begin
MY SLUSH
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    if char =~ /[A-Za-z]/
      #binding.pry
      #p char
      need_upper = !need_upper

    end
  end
  p result
end
Hide Solution & Discussion
Solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end
Discussion
This solution is very similar to the previous solution; the only difference is
that we need to avoid changing need_upper when processing non-alphabetic characters.
We use a simple regular expression with the /i flag (ignore case) to detect letters.

Further Exploration
Modify this method so the caller can determine whether non-alphabetic characters
should be counted when determining the upper/lowercase state. That is, you want a
method that can perform the same actions that this method does, or operates like
the previous version.

Hint: Use a keyword argument.

MY SLUSH
def staggered_case(string, count_non_letters)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    if count_non_letters
      if char =~ /[A-Za-z]/
        #binding.pry
        #p char
        need_upper = !need_upper

      end
    else
      need_upper = !need_upper
    end
  end
  p result
end
=end
