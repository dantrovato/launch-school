=begin
101-109 - Small ProblemsDebuggingCountdown

Countdown
Our countdown to launch isn't behaving as expected. Why? Change the code so that
our program successfully counts down from 10 to 1.

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)

end

puts 'LAUNCH!'

=end

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)

end

puts 'LAUNCH!'







=begin
Hide Solution & Discussion
Solution
def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
Discussion
Revelant to notice here is that the counter variable initialized on line 5 and
the counter parameter of the decrease method are two independent variables. Most
importantly, the latter lives only within the scope of the method. On line 2 of
our original code snippet we reassign the method parameter to the result of its
value minus 1. (Recall that counter -= 1 is shorthand for counter = counter - 1.)
This changes the value of the counter variable local to the method, but not the
variable counter referenced on lines 5, 8 and 9. We also don't use the return
value of the method
anywhere, so our counter variable outside of the method continues to reference
the Integer 10.

To address this, we can reassign the variable counter on line 9 to the return
value of decrease(counter) each time we iterate through the block. For clarity,
we also remove the reassignment in the decrease method, as it does not serve any
purpose.

Further Exploration
We specify 10 two times, which looks a bit redundant. It should be possible to
specify it only once. Can you refactor the code accordingly?
=end
