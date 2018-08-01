def select_vowels(str)
  counter = 0
  vowels = ''

  loop do
    break if counter == str.size
    current_character = str[counter]
    if 'aeiouAEIOU'.include?(current_character)
      vowels << current_character
    end
    counter += 1
  end
  vowels
end

p select_vowels('whaccu lookin at?')
