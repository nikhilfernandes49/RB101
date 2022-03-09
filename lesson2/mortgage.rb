require "yaml"
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(key)
  message = (MESSAGES[key])
  puts "=> #{message}"
end

def valid_name?(string)
  string.to_i == 0
end

def valid_integer(input)
  input.to_i.to_s == input
end

def valid_float(input)
  input.to_f.to_s == input
end

def valid_number?(number)
  valid_integer(number) || valid_float(number)
end

prompt('welcome')
name = ""
loop do
  name = gets.chomp
  if valid_name?(name)
    break
  else
    prompt('wrong_value')
  end
end

puts "=> Hi, #{name.capitalize}!"

loop do
  prompt('amount')
  loan_amount = ""
  loop do
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      prompt('wrong_value')
    end
  end

  prompt('apr')
  apr = ""
  loop do
    apr = gets.chomp
    if valid_number?(apr)
      apr = apr.to_f
      break
    else
      prompt('wrong_value')
    end
  end
  apr /= 100
  monthly_rate = apr / 12

  prompt('duration')
  loan_duration = ""
  loop do
    loan_duration = gets.chomp
    if valid_number?(loan_duration)
      loan_duration = loan_duration.to_f
      break
    else
      prompt('wrong_value')
    end
  end
  loan_duration *= 12

  monthly_payment = (loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration)))).round(2)
  puts "The monthly payment you have to make is $#{monthly_payment}"

  prompt('again?')
  again = gets.chomp.downcase
  break unless again.start_with?('y')
end
