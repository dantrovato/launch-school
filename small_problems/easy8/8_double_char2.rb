=begin
Double Char (Part 2)
Write a method that takes a string, and returns a new string in which every
consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
=end



p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""















=begin
MY SLUSH
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z
  B C D F G H J K M N P Q R S T V W X Y Z)

def double_consonants(string)
  result = []
  string.each_char do |chr|
    if CONSONANTS.include?(chr)
      result << chr << chr
    else
      result << chr
    end
  end
  p result.join
end
MY SLUSH 2
def double_consonants(string)
  result = []
  string.each_char do |chr|
    if chr =~ /[a-zA-Z]/ && chr !~ /[aeiou]/i
      result << chr << chr
    else
      result << chr
    end
  end
  p result.join
end

Hide Solution & Discussion
Solution
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end
Discussion
This exercise is nearly identical to the previous exercise, so it should come as
no surprise that the solution is also similar. The main difference here is that
we need to check each character to see if it is a consonant. There are lots of
ways to do this: we have chosen to use an array of the lowercase consonants, and
just check each character to see if it is in that array. Of course, we do need
to account for uppercase consonants as well, so we convert each character to
lowercase for the test.
=end
