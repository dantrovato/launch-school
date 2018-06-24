def doubler(start)
  puts "this is the new number: #{start}"

  if start < 20
    doubler(start * 2)
  end
end

doubler 3

## I WOULD HAVE THOUGHT IT'D BE start *= 2 instead.
## DON'T UNDERSTAND WHY THIS WORKS

=begin
puts "RECURSION"

def factorial num

  if num <= 1
    num
  else
    num * factorial(num-1)
  end
end

p factorial 5
=end
