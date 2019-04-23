=begin
Give us your feedback
Right Triangles
Write a method that takes a positive integer, n, as an argument, and displays a
right triangle whose sides each have n stars. The hypotenuse of the triangle
(the diagonal side in the images below) should have one end at the lower-left of
the triangle, and the other end at the upper-right.

Examples:

triangle(5)

    *
   **
  ***
 ****
*****
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

=end


triangle(5)
triangle(9)










=begin

MY SLUSH
def triangle(n)
  spaces_counter = n - 1
  stars_counter = n - spaces_counter
  n.times do
    puts " " * spaces_counter + "*" * stars_counter
    spaces_counter -= 1
    stars_counter += 1
  end
end

Hide Solution & Discussion
Solution
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
Discussion
For this problem we have an inverse relationship between the number of spaces
and the number of stars that should be printed on each line. If we are on the
first line, we print num - 1 spaces and 1 star. If we are on the second line we
print num - 2 spaces and 2 stars. And so forth.

We do just that by initially setting stars to 1, and spaces to num -1. On each
  iteration, we output the number of spaces and stars, and then we decrement the
  number of spaces and increment the number of stars. This will give us the
  desired result.

Further Exploration
Try modifying your solution so it prints the triangle upside down from its
current orientation. Try modifying your solution again so that you can display
the triangle with the right angle at any corner of the grid.
=end
