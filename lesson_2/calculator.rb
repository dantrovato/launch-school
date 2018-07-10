def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  integer?(number)
  number?(number)
end

def operation_to_message(operator)
  case operator
  when '1'
    'adding'.capitalize
  when '2'
    'subtracting'.capitalize
  when '3'
    'multiplying'.capitalize
  when '4'
    'dividing'.capitalize
  end
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i.to_s == input
end
def float?(input)
  input.to_f.to_s == input
end

prompt('Welcome to Calculator! Enter your name:')
number1 = ''
number2 = ''
on = true
name = ''
operator = ''

loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt('Make sure to use a valid name')
  else
    break
  end
end
prompt("Hi #{name.capitalize}")
while on
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("Hmm.. that's not a valid number, cowboy")
    end
  end

  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Hmm.. that's not a valid number, cowboy")
    end
  end

  # prompt("what operation would you like to perform? 1) add, 2)
  # subtract, 3) mutiply, 4) divide and conquer")
  operator_prompt = <<-FAVA
  What operation would you like to perform?
      1 >> add
      2 >> subtract
      3 >> mutiply
      4 >> divide



  FAVA
  prompt(operator_prompt)
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('only 1 to 4 please:')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  prompt('...')
  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end
  prompt("The result is #{result}")
  prompt('...')
  prompt('Go again?')
  loop do
    again = Kernel.gets().chomp().downcase
    if again == 'yes'
      on = true
      break
    elsif again == 'no'
      on = false
      break
    else
      prompt('yes or no please')
      next
    end
  end
end
