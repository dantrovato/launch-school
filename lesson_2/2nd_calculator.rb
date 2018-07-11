def prompt(message)
  puts "=> #{message} <="
end

first_number = ''
second_number = ''

loop do
  # FIRST NUMBER
  prompt "Enter first number"
  loop do
    first_number = gets.chomp
    if first_number.to_i.to_s == first_number && first_number.to_i > 0
      break
    else
      prompt "Enter valid number"
    end
  end

  # SECOND NUMBER
  prompt "Enter second number"
  loop do
    second_number = gets.chomp
    if second_number.to_i.to_s == second_number && second_number.to_i > 0
      break
    else
      prompt "Enter valid number"
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
   operation = ''
   result = case calculation
   when '1'
     operation = 'plus'
     first_number.to_i + second_number.to_i

   when '2'
     operation = 'minus'
     first_number.to_i - second_number.to_i

   when '3'
     operation = 'times'
     first_number.to_i * second_number.to_i

   when '4'
     operation = 'divided by'
     first_number.to_f / second_number.to_f

   else
     prompt "Enter valid number"
   end
   prompt "The result of #{first_number} #{operation} #{second_number} is #{result}"
   break
  end

  prompt "Do you want to go again? Yes or no?"
  start_again = gets.chomp
  break if start_again == 'no'.downcase
end

prompt "Thank you and Allah bless you\n !"
