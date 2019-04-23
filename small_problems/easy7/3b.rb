require 'pry'
require 'pry-byebug'
=begin
Further Exploration
Ruby convenient provides the String#capitalize method to capitalize strings.
Without that method, how would you solve this problem? Try to come up with at
least two solutions.

=end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
























=begin
MY SLUSH 1

LOW_TO_UPPERCASE = {}
UP_TO_LOWERCASE = {}
CAPITALS_ARR = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
LOWERCASE_ARR = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
('a'..'z').each_with_index do |letter, index|
  LOW_TO_UPPERCASE[letter] = CAPITALS_ARR[index]
end
('A'..'Z').each_with_index do |letter, index|
  UP_TO_LOWERCASE[letter] = LOWERCASE_ARR[index]
end

def word_cap(string)
  lowercase_strings = []
  string.each_char do |chr|
    if chr =~ /[A-Z]/
      lowercase_strings << UP_TO_LOWERCASE[chr]
    else
      lowercase_strings << chr
    end
  end

  result = lowercase_strings.join.split.map do |word|
    if word[0] =~ /[a-z]/
      word[0] = LOW_TO_UPPERCASE[word[0]]
    end
    word
  end
  p result.join(' ')
end

MY SLUSH 2

LOW_TO_UPPERCASE = {}
UP_TO_LOWERCASE = {}
CAPITALS_ARR = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
LOWERCASE_ARR = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
('a'..'z').each_with_index do |letter, index|
  LOW_TO_UPPERCASE[letter] = CAPITALS_ARR[index]
end
('A'..'Z').each_with_index do |letter, index|
  UP_TO_LOWERCASE[letter] = LOWERCASE_ARR[index]
end

def make_lowercase(string)
  result = []
  string.each_char do |chr|
    if CAPITALS_ARR.include?(chr)
      result << UP_TO_LOWERCASE[chr]
    else
      result << chr
    end
  end
  result.join
end

def word_cap(string)
  string = make_lowercase(string)
  lowercase_string = []
  string.split.each do |word|

    word[0] = LOW_TO_UPPERCASE[word[0]] if LOWERCASE_ARR.include?(word[0])
    lowercase_string << word
    end

  lowercase_string.join(' ')
end
make_lowercase('this is a "quoted" word')
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'




=end
