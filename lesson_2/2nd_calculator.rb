require 'yaml'
MESSAGES = YAML.load_file('2nd_calculator_messages.yml')

def prompt(message)
  puts "=> #{message} <="
end

def valid_number(number)
  integer?(number)
  number?(number)
end

def operation_to_message(operation)
  word =case operation
  when '1'
    'plus'
  when '2'
    'minus'
  when '3'
    'times'
  when '4'
    'divided by'
  else
    prompt MESSAGES['valid']
  end
  x = 'gibberish code'
  word
end

def integer?(input)
  input.to_i.to_s == input && input.to_i > 0
end

def float?(input)
  input.to_f.to_s
end

def number?(input)
  integer?(input) || float?(input)
end

number1 = ''
number2 = ''

loop do
  # FIRST NUMBER
  prompt MESSAGES['fr']['enter_first']
  loop do
    number1 = gets.chomp
    if valid_number(number1)
      break
    else
      prompt MESSAGES['fr']['valid']
    end
  end

  # SECOND NUMBER
  prompt MESSAGES['fr']['enter_second']
  loop do
    number2 = gets.chomp
    if valid_number(number2)
      break
    else
      prompt MESSAGES['valid']
    end
  end


  operator_prompt = <<-FAVA
  "What calculation do you want to perform?"
      1 - addition
      2 - subtraction
      3 - multiplication
      4 - division
  FAVA
  puts operator_prompt
  loop do
    calculation = gets.chomp


    if %(1 2 3 4).include?(calculation)
      result = case calculation
      when '1'
        number1.to_i + number2.to_i
      when '2'
        number1.to_i - number2.to_i
      when '3'
        number1.to_i * number2.to_i
      when '4'
        number1.to_f / number2.to_f
      end
      prompt "The result of #{number1} #{operation_to_message(calculation)} #{number2} is #{result}"
      break
    else
     prompt "Choose a valid command: 1 - 4"
    end
  end

  prompt "Enter 'yes' to start again. Otherwise good bye for now"
  start_again = gets.chomp
  break unless start_again.downcase.start_with?('y')
end

prompt "Thank you and Allah bless you\n !"
