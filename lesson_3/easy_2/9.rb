# Question 9
# Write a one-liner to count the number of lower-case 't' characters in the following string:
#
# statement = "The Flintstones Rock!"
 statement = "The Flintstones Rock!"
 i = 0
 statement.each_char { |chr| i += 1 if chr == 't' }

i

# ACTUAL SOLUSH

p statement.count('t')
