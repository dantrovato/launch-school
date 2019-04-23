=begin
Further Exploration
Take a few minutes to read about Array#zip. #zip doesn't do the same thing as
interleave, but it is very close, and more flexible. In fact, interleave can be
implemented in terms of zip and one other method from the Array class. See if
you can rewrite interleave to use zip.
=end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']



























#
# MY SLUSH
# def interleave(arr1, arr2)
#   p arr1.zip(arr2).flatten
# end
