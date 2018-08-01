# Question 4
# To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.
#
# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end
#
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)
#
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"
 so this one will be the other way around from the previous exercise and for the
 same reasons. it's all to do with the << and =. string will be mutated and the array
 reassigned
