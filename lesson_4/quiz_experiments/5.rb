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

def camel(str)
  words = str.split(' ')# => ["The", "sky", "was", "blue"]
  counter = 0

  while counter < words.size
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end
p camel(sentence) # => 'TheSkyWasBlue'
