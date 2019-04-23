=begin
Swap Case
Write a method that takes a string as an argument and returns a new string in
which every uppercase letter is replaced by its lowercase version, and every
lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


=end



p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'





















=begin

MY SLUSH
LOW_TO_UPPERCASE = {}
UP_TO_LOWERCASE = {}
LOWERCASE_ARR = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
UPPERCASE_ARR = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

('a'..'z').each_with_index do |letter, index|
  LOW_TO_UPPERCASE[letter] = UPPERCASE_ARR[index]
end

('A'..'Z').each_with_index do |letter, index|
  UP_TO_LOWERCASE[letter] = LOWERCASE_ARR[index]
end

MY SLUSH 2

def swapcase(string)
  result = ""
  string.chars.each do |chr|
    result += (chr == chr.upcase) ? chr.downcase : chr.upcase
  end
  result
end

def swapcase(string)
  result_arr = string.split('').map do |chr|
    if LOW_TO_UPPERCASE.keys.include?(chr)
      chr = LOW_TO_UPPERCASE[chr]
    elsif UP_TO_LOWERCASE.keys.include?(chr)
      chr = UP_TO_LOWERCASE[chr]
    else
      chr
    end
  end

  p result_arr.join
end


Hide Solution & Discussion
Solution
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end
Discussion
In our solution, we iterate through each character in the string passed into
swapcase. If the character is lowercase (/[a-z]/), we make it uppercase; if it
is uppercase (/[A-Z]/), we make it lowercase. For all other characters, we do
nothing.

Each character is then mapped to a new array and assigned to characters. Finally,
we join characters together into a new String and return that value.
=end
