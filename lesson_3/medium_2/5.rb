# Question 5
# How could the unnecessary duplication in this method be removed?
#
# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end
def color_valid(color)
  (color == "blue" || color == "green") ? true : false

end
p color_valid("gree")

# actual solush

def color_valid(color)
  color == "blue" || color == "green"
end
