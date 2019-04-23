# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).
#
# Examples:

p cleanup("---what's my +*& line?")  == ' what s my line '





























# MY SLUSH
=begin
VALID_LETTERS = ('a'..'z')

def cleanup(str)
  final_string = ''
  str.each_char.each do |chr|
    if VALID_LETTERS.include?(chr)
      final_string << chr
    else
      final_string << ' ' unless final_string[-1] == ' '
    end
  end
  p final_string
end
=end
