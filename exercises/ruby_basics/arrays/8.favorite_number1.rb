# The following array contains three names and numbers. Group each
#  name with the number following it by placing the pair in their
#  own array. Then create a nested array containing all three groups. What
#  does this look like? (You don't need to write any code here. Just
#    alter the value shown so it meets the exercise requirements.)
#
# ['Dave', 7, 'Miranda', 3, 'Jason', 11]


dave = ['Dave', 7, 'Miranda', 3, 'Jason', 11].slice(0,2)
miranda =['Dave', 7, 'Miranda', 3, 'Jason', 11].slice(2,2)
jason = ['Dave', 7, 'Miranda', 3, 'Jason', 11].slice(4,2)

new_array = []
new_array << dave
new_array << miranda
new_array << jason

p new_array
