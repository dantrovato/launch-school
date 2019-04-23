=begin NO NEED TO REPEAT
101-109 - Small ProblemsAdvanced 1Rotating Matrices

Rotating Matrices
As we saw in the previous exercises, a matrix can be represented in ruby by an
Array of Arrays. For example:

1  5  8
4  7  2
3  9  6
can be described by the Array of Arrays:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
A 90-degree rotation of a matrix produces a new matrix in which each side of the
matrix is rotated clockwise by 90 degrees. For example, the 90-degree rotation of
the matrix shown above is:

3  4  1
9  7  5
6  2  8
A 90 degree rotation of a non-square matrix is similar. For example, the
rotation of:

3  4  1
9  7  5
is:

9  3
7  4
5  1
Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise
as shown above.

Examples

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
This program should print "true" three times.
=end



matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]



new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2










=begin
MY SLUSH
def rotate90(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row.reverse
  end
  p result
end

Hide Solution & Discussion
Solution
def rotate90(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map do |row_index|
      matrix[row_index][column_index]
    end
    result << new_row.reverse
  end
  result
end
Discussion
This, too, is a bit on the tricky side because a rotation means you go from bottom
to top of the matrix to extract each new row, which becomes a little confusing to
index. However, you should also recognize that this problem is very similar to
that of our transpose exercises.

Like the transpose exercises, this is easier to deal with if you start with the
simple 3 x 3 case, which has a solution that looks like this:

def rotate90(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map do |row_index|
      matrix[row_index][column_index]
    end
    result << new_row.reverse
  end
  result
end
This starts the same way as our transpose solution by iterating through the columns
and rows as we build up the new matrix row by row. The only difference is that we
need to reverse the elements of each new row; since we're reading the column values
from top to bottom, we need to insert them in the new row from bottom to top. To
do this, we just reverse the entire set.

Once you have the simpler case solved, expanding this solution to the general case
  is reasonably easy; as before, it's simply a matter of computing the column and
  row sizes, and we know how to do that. The end result is identical in every way
    to our transpose method except for reversing each new row.

Further Exploration
Can you modify your solution to perform 90, 180, 270, and 360 degree rotations based
on an argument?
=end
