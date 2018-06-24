# Given the following code, use Array#each to print the plural of
# each word in words.
#
# words = 'car human elephant airplane'
# Expected output:
#
# cars
# humans
# elephants
# airplanes

# WORKS IF THE PUTS IS IN THE BLOCK BUT NOT IF IT ISN'T. DON'T UNDERSTAND
# WHY IT DOESN'T READ THE S IF THE PUTS IS IN THE BLOCK

words = 'car human elephant airplane'
words.split.each {|word|  puts "#{word}s"}
