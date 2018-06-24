def fib(num)
  iteration = 0

  if num < 2
    puts "this is the first if: #{num}"
    num
  else
    iteration += 1
    puts "this is the else -- iteration: #{iteration}. num: #{num}"

    fib(num-1) + fib(num-2)

  end
end

puts fib(6)
