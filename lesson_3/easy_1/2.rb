# Question 2
# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
#

# MY ANSWERS

# what is != and where should you use it?
# ANSWER: ! IS THE 'NOT' OPERATOR. IN A CONDITIONAL IT WILL TELL THE PROGRAM TO
# LOOK FOR A CONDITION WHERE TWO ITEMS ARE NOT THE SAME

# put ! before something, like !user_name
# ANSWER: MAKES THE user_name FALSE

# put ! after something, like words.uniq!
# ANSWER: MAKES uniq DESTRUCTIVE

# put ? before something
# ANSWER: ERROR

# put ? after something
# ANSWER: IT'S USED ON METHOD NAMES WHO ARE EXPECTED TO RETURN A BOOLEAN

# put !! before something, like !!user_name
# ANSWER: WILL EVALUATE TO TRUE

# ACTUAL ANSWERS

# Just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not Ruby syntax. Therefore, you really don't know what the method is doing, even if it ends in those characters -- it depends on the method implementation. The other uses are actual Ruby syntax:
#
# != means "not equals"
# ? : is the ternary operator for if...else
# !!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
# !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.
