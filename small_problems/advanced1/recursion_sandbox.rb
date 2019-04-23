=begin
RECURSION 1 at tony's

require 'pry'

arr = [-2, 6, 3]

def num_of_positives(array, index)
   count = 0
   if index == array.size
     if array[index] > 0
       return 1
     else
       return 0
     end
   end

   if array[index] > 0
     return 1 + num_of_positives(array, index + 1)
   else
     return 0 + num_of_positives(array, index + 1)
   end
end

p num_of_positives(arr, 0)


def double(start)
  puts start
  #start += 1
  if start < 20
    double(start * 2)

  end
end

double(1)

def count_down(n)
  if n >= 0
    puts n
    count_down(n - 1)
  end
end

count_down(10)

=end

string = ""
string = true ? "1" : "0"  # this works
string << true ? "1" : "0" # invokes error "no implicit conversion of true into String (TypeError)"
string << (true ? "1" : "0")  # this works
