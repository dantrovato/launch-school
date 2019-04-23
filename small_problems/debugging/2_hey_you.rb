=begin
101-109 - Small ProblemsDebuggingHEY YOU!

HEY YOU!
String#upcase! is a destructive method, so why does this code print HEY you instead
of HEY YOU? Modify the code so that it produces the expected output.

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end
=end


shout_out_to('you') # expected: 'HEY YOU'











=begin
MY SLUSH
def shout_out_to(name)
  # =>        ['Y', 'O', 'U']
  name = name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name.join
end

Hint
Consider what exactly is being mutated on line 2.

Hide Solution & Discussion
Solution
def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')
Discussion
The String#chars method returns an array of the characters in a string, so
name.chars in our example returns ['y', 'o', 'u']. Note that these character
strings are new String objects, different from the name string, and it's those
objects that we mutate on line 2. On line 4, name is therefore still 'you'.

The solution is to upcase name directly, either as shown in the solution above or
using the non-destructive String#upcase method as follows:

def shout_out_to(name)
  puts 'HEY ' + name.upcase
end
=end
