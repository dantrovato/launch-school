# Given the following code, invoke a destructive method on greeting
# so that Goodbye! is printed instead of Hello!.
#
# greeting = 'Hello!'
# puts greeting
# Expected output:
#
# Goodbye!

greeting = 'Hello!'

#MY SOLUSH
puts greeting = 'Goodbye'

greeting.gsub!('Hello', 'Goodbye')
