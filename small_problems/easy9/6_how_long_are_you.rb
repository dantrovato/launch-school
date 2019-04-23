=begin

How long are you?
Write a method that takes a string as an argument, and returns an Array that contains
every word from the string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and
that any substring of non-space characters is a word.

Examples

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2",
  "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

=end


p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2",
  "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []












=begin
MY SLUSH
def word_lengths(string)
  result = []
  string.split.each do |str|
    entry = str + ' ' + str.size.to_s
    result << entry
  end
  result
end

Hide Solution & Discussion
Solution
def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end
Discussion
It may be easiest to see in steps. First we want to split the separate words
into an array:

irb(main):001:0> string = "cow sheep chicken"
=> "cow sheep chicken"
irb(main):002:0> string.split
=> ["cow", "sheep", "chicken"]
Then we need to modify each word separately so we use Array#map

irb(main):003:0> string.split.map { |word| "#{word}" }
=> ["cow", "sheep", "chicken"]
Finally we need to combine each word in a string with the length of the string.
Interpolation is a good tactic here.

irb(main):004:0> string.split.map { |word| "#{word} #{word.length}" }
=> ["cow 3", "sheep 5", "chicken 7"]
Being that the method returns the last line run our job is finished.
=end
