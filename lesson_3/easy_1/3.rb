# Question 3
# Replace the word "important" with "urgent" in this string:

# MY SOLUSH

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.split
p advice.sub!('important', 'urgent')

#  sub! will only replace the first instance. gsub will replace all
