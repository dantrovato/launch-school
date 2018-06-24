# In the code below, status is randomly assigned as 'awake' or 'tired'.
#
# status = ['awake', 'tired'].sample
# Write an if statement that returns "Be productive!" if status equals 'awake' and
# returns "Go to sleep!" otherwise. Then, assign the return value of the if
# statement to a variable and print that variable.


status = ['awake', 'tired'].sample

=begin
i_will = puts status == 'awake' ? "Be productive!" : "Go to sleep!"
puts i_will
=end

alert = if status == 'awake'
          "be productive"
        else
          "go to sleep"
        end
 puts alert
