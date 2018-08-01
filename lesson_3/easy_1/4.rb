# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
#
# numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?
#
# numbers.delete_at(1)
# numbers.delete(1)
#
# delete_at(1) will delete the second item in the array
# delete(1) will delete the value of 1


numbers = [1, 2, 3, 1, 4, 5]
numbers.delete(1)
p numbers

so delete(1) will delete all instances of 1
