# Question 6
# Starting with the string:
#
# famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

# FIRST EXAMPLE
famous_words = "seven years ago..."
'Four score and ' << famous_words

# SECOND EXAMPLE
p famous_words.split.unshift('Four score and').join(' ')

# ACTUAL SOLUSHES

# 1

# "Four score and " + famous_words
#
# famous_words.prepend("Four score and ")
# AH... DIDN'T KNOW THIS ONE
