# swapcase method without using upcase or downcase


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
=end
