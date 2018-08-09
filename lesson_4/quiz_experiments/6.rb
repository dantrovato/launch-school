sentence = 'The sky was blue'

def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do

    break if current_word == words.size

    words[current_word].upcase!
    current_word += 1
  end

  words.join('_')
end

p upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'
