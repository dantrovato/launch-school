# In the previous exercise, you wrote a program to solicit a password.
# In this exercise, you should modify the program so it also requires a user
# ame. The program should solicit both the user name and the password, then
#  validate both, and issue a generic error message if one or both are
#  incorrect; the error message should not tell the user which item is
#  incorrect.

PASSWORD = "SecreT"
USERNAME = "John"

loop do
  puts "enter username"
  username = gets.chomp
  puts "please enter password"
  password = gets.chomp
  if password == PASSWORD && username == USERNAME
      puts "welcome"
      break
    else
      puts "invalid. you are an invalid"
  end
end
puts PASSWORD + " " + USERNAME
