# ask user for 2 numbers

# and an operation to perform

# perform the operation on the two numbers

# output result

Kernel.puts('Welcome to Calculator!')

Kernel.puts('What\'s the first number?')
number1 = Kernel.gets().chomp()

Kernel.puts(number1.inspect)

Kernel.puts('What\'s the second number?')
number2 = Kernel.gets().chomp()

Kernel.puts(number1 + " " + number2)

Kernel.puts("what operation would you like to perform? 1) add, 2)
subtract, 3) mutiply, 4) divide and conquer")

operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
elsif operator == '4'
  result = number1.to_f / number2.to_f
end

Kernel.puts("The result is #{result}")
