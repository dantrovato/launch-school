zero = 0
puts "Before each call"
zero.each {|element| puts element} rescue puts "Can't do that!"
puts "After each call"

#if we removed the rescue block the second puts will not execute because
#the program will exit after the error
