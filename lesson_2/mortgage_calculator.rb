# COULD NOT FINISH THIS ONE 

def prompt(message)
  puts "=> #{message}"
end

def is_valid?(input)
  input.to_i.to_s == input && input.to_i > 0
end

# GET INPUT AND VALITADE
prompt('Welcome to mortgage calculator')
prompt('Please enter loan amount')

loan_amount = ''
loop do
  loan_amount = gets.chomp
  if is_valid?(loan_amount) && loan_amount.to_f > 0
    break
  else
    prompt ('Enter valid number')
  end
end

prompt('Please enter annual percentage rate (APR)')
prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

apr = ''

loop do
  apr = gets.chomp
  if is_valid?(apr) && apr.to_f > 0
    break
  else
    prompt ('Enter valid number')
  end
end

prompt('Enter loan duration in years')

loan_duration_years = ''
loop do
  loan_duration_years = gets.chomp
  if is_valid?(loan_duration_years) && loan_duration_years.to_i > 0
    break
  else
    prompt('Enter valid number')
  end
end

annual_interest_rate = apr.to_f / 100
monthly_interest_rate = annual_interest_rate / 12
months = loan_duration_years / 12

monthly_payments = loan_amount.to_f() *
        (monthly_interest_rate/
        1 - (1 + monthly_interest_rate) ** (- months.to_i())))
