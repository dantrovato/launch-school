# Question 2
# Starting with this string:
#
# munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original munsters_description above):
#
# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# MY SOLUSH
munsters_description = "The Munsters are creepy in a good way."

def lower_case_first_two(string)
  "#{string[0].downcase}#{string[1..3].upcase}#{string[4].downcase}#{string[5...string.length].upcase}"

end

p munsters_description.capitalize
p lower_case_first_two(munsters_description)
#
p munsters_description.downcase
p munsters_description.upcase
p munsters_description
# ACTUAL SOLUSH

p munsters_description.swapcase
